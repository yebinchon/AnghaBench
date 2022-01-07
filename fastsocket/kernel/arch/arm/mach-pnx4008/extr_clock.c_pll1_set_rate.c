
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct clk {scalar_t__ rate; } ;


 scalar_t__ CLK_RATE_13MHZ ;
 int clk_reg_disable (struct clk*) ;
 int clk_reg_enable (struct clk*) ;
 int clk_wait_for_pll_lock (struct clk*) ;

__attribute__((used)) static int pll1_set_rate(struct clk *clk, u32 rate)
{
 return 0;
}
