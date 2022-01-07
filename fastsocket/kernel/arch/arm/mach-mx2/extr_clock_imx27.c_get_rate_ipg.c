
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 int CCM_CSCR ;
 scalar_t__ CHIP_REV_2_0 ;
 int __raw_readl (int ) ;
 unsigned long clk_get_rate (int ) ;
 scalar_t__ mx27_revision () ;

__attribute__((used)) static unsigned long get_rate_ipg(struct clk *clk)
{
 unsigned long rate, ipg_pdf;

 if (mx27_revision() >= CHIP_REV_2_0)
  return clk_get_rate(clk->parent);
 else
  ipg_pdf = (__raw_readl(CCM_CSCR) >> 8) & 1;

 rate = clk_get_rate(clk->parent);
 return rate / (ipg_pdf + 1);
}
