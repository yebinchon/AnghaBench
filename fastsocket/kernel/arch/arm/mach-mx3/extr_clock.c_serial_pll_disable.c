
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int dummy; } ;


 int MXC_CCM_CCMR ;
 int MXC_CCM_CCMR_SPE ;
 int __raw_readl (int ) ;
 int __raw_writel (int ,int ) ;

__attribute__((used)) static void serial_pll_disable(struct clk *clk)
{
 u32 reg;

 reg = __raw_readl(MXC_CCM_CCMR);
 reg &= ~MXC_CCM_CCMR_SPE;
 __raw_writel(reg, MXC_CCM_CCMR);
}
