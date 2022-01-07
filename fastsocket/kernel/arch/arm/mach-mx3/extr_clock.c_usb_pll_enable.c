
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int dummy; } ;


 int MXC_CCM_CCMR ;
 int MXC_CCM_CCMR_UPE ;
 int __raw_readl (int ) ;
 int __raw_writel (int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int usb_pll_enable(struct clk *clk)
{
 u32 reg;

 reg = __raw_readl(MXC_CCM_CCMR);
 reg |= MXC_CCM_CCMR_UPE;
 __raw_writel(reg, MXC_CCM_CCMR);


 udelay(80);

 return 0;
}
