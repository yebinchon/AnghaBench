
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32
calc_div(u32 src, u32 target, int *div)
{
 u32 clk0 = src, clk1 = src;
 for (*div = 0; *div <= 7; (*div)++) {
  if (clk0 <= target) {
   clk1 = clk0 << (*div ? 1 : 0);
   break;
  }
  clk0 >>= 1;
 }

 if (target - clk0 <= clk1 - target)
  return clk0;
 (*div)--;
 return clk1;
}
