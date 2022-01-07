
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long s3c24xx_calc_div(struct clk *clk, unsigned long rate)
{
 unsigned long div;

 if ((rate == 0) || !clk->parent)
  return 0;

 div = clk_get_rate(clk->parent) / rate;
 if (div < 2)
  div = 2;
 else if (div > 16)
  div = 16;

 return div;
}
