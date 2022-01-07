
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int dummy; } ;


 int MXC_CCM_PMCR0 ;
 int MXC_CCM_PMCR0_DFSUP1 ;
 int MXC_CCM_PMCR0_DFSUP1_SPLL ;
 int __raw_readl (int ) ;
 unsigned long clk_get_rate (int *) ;
 int mcu_pll_clk ;
 int serial_pll_clk ;

__attribute__((used)) static unsigned long mcu_main_get_rate(struct clk *clk)
{
 u32 pmcr0 = __raw_readl(MXC_CCM_PMCR0);

 if ((pmcr0 & MXC_CCM_PMCR0_DFSUP1) == MXC_CCM_PMCR0_DFSUP1_SPLL)
  return clk_get_rate(&serial_pll_clk);
 else
  return clk_get_rate(&mcu_pll_clk);
}
