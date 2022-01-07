
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 int CCM_CSCR ;
 int CCM_CSCR_PRESC ;
 int __raw_readl (int ) ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long fclk_get_rate(struct clk *clk)
{
 unsigned long fclk = clk_get_rate(clk->parent);

 if (__raw_readl(CCM_CSCR) & CCM_CSCR_PRESC)
  fclk /= 2;

 return fclk;
}
