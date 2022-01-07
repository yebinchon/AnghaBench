
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int parent; } ;


 int armclk_mask ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long s3c64xx_clk_arm_round_rate(struct clk *clk,
      unsigned long rate)
{
 unsigned long parent = clk_get_rate(clk->parent);
 u32 div;

 if (parent < rate)
  return parent;

 div = (parent / rate) - 1;
 if (div > armclk_mask)
  div = armclk_mask;

 return parent / (div + 1);
}
