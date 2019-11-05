/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module multiply_31 (
    input [15:0] a,
    input [15:0] b,
    output reg [15:0] mul
  );
  
  
  
  integer shiftIndex;
  
  reg [15:0] partial;
  
  reg [15:0] tempMul;
  
  always @* begin
    tempMul = 1'h0;
    for (shiftIndex = 1'h0; shiftIndex < 5'h10; shiftIndex = shiftIndex + 1) begin
      partial = (a[0+15-:16] & ({5'h10{b[(shiftIndex)*1+0-:1]}})) << shiftIndex;
      tempMul = tempMul + partial;
    end
    mul = tempMul;
  end
endmodule
