
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int clk_round_rate (struct clk*,unsigned long) ;
 int syscon_clk_rate_set_mclk (int ) ;

__attribute__((used)) static int clk_set_rate_mclk(struct clk *clk, unsigned long rate)
{
 syscon_clk_rate_set_mclk(clk_round_rate(clk, rate));
 return 0;
}
