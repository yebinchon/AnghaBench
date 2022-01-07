
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUSDIV ;
 int FREF ;
 int MCF_CCM_CDR ;
 int MCF_CCM_CDR_LPDIV (int) ;
 int MCF_CCM_MISCCR ;
 int MCF_CCM_MISCCR_LIMP ;
 int MCF_PLL_PFDR ;

int get_sys_clock(void)
{
 int divider;


 if (MCF_CCM_MISCCR & MCF_CCM_MISCCR_LIMP) {
  divider = MCF_CCM_CDR & MCF_CCM_CDR_LPDIV(0xF);
  return (FREF/(2 << divider));
 }
 else
  return ((FREF * MCF_PLL_PFDR) / (BUSDIV * 4));
}
