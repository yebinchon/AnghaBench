
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CKIL_CLK_FREQ ;
 int MXC_CCM_CCMR ;
 unsigned long MXC_CCM_CCMR_PRCS_MASK ;
 unsigned long MXC_CCM_CCMR_PRCS_OFFSET ;
 unsigned long __raw_readl (int ) ;
 int ckih_clk ;
 unsigned long clk_get_rate (int *) ;

__attribute__((used)) static unsigned long pll_ref_get_rate(void)
{
 unsigned long ccmr;
 unsigned int prcs;

 ccmr = __raw_readl(MXC_CCM_CCMR);
 prcs = (ccmr & MXC_CCM_CCMR_PRCS_MASK) >> MXC_CCM_CCMR_PRCS_OFFSET;
 if (prcs == 0x1)
  return CKIL_CLK_FREQ * 1024;
 else
  return clk_get_rate(&ckih_clk);
}
