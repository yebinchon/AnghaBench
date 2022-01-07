
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int rate; } ;


 int FREQCR ;
 int PLL2 ;
 int ctrl_inw (int ) ;
 int* pll1rate ;

__attribute__((used)) static void master_clk_init(struct clk *clk)
{
 clk->rate *= PLL2 * pll1rate[(ctrl_inw(FREQCR) >> 8) & 7];
}
