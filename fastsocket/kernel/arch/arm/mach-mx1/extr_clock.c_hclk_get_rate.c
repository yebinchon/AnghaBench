
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 int CCM_CSCR ;
 int CCM_CSCR_BCLK_MASK ;
 int CCM_CSCR_BCLK_OFFSET ;
 int __raw_readl (int ) ;
 int clk_get_rate (int ) ;

__attribute__((used)) static unsigned long hclk_get_rate(struct clk *clk)
{
 return clk_get_rate(clk->parent) / (((__raw_readl(CCM_CSCR) &
   CCM_CSCR_BCLK_MASK) >> CCM_CSCR_BCLK_OFFSET) + 1);
}
