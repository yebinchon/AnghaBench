
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 unsigned long clk_get_rate (int ) ;
 unsigned long s3c24xx_calc_div (struct clk*,unsigned long) ;

__attribute__((used)) static unsigned long s3c24xx_round_dclk_rate(struct clk *clk,
 unsigned long rate)
{
 unsigned long div = s3c24xx_calc_div(clk, rate);

 if (div == 0)
  return 0;

 return clk_get_rate(clk->parent) / div;
}
