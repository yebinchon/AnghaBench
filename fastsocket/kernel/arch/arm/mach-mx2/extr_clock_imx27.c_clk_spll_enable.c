
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int CCM_CSCR ;
 unsigned long CCM_CSCR_SPEN ;
 int CCM_SPCTL1 ;
 unsigned long CCM_SPCTL1_LF ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;

__attribute__((used)) static int clk_spll_enable(struct clk *clk)
{
 unsigned long reg;

 reg = __raw_readl(CCM_CSCR);
 reg |= CCM_CSCR_SPEN;
 __raw_writel(reg, CCM_CSCR);

 while (!(__raw_readl(CCM_SPCTL1) & CCM_SPCTL1_LF));

 return 0;
}
