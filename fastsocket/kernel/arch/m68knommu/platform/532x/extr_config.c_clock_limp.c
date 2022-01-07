
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int FREF ;
 int MAX_LPD ;
 int MCF_CCM_CDR ;
 int MCF_CCM_CDR_LPDIV (int) ;
 int MCF_CCM_CDR_SSIDIV (int) ;
 int MCF_CCM_MISCCR ;
 int MCF_CCM_MISCCR_LIMP ;
 int MIN_LPD ;

int clock_limp(int div)
{
 u32 temp;


 if (div < MIN_LPD)
  div = MIN_LPD;
 if (div > MAX_LPD)
  div = MAX_LPD;



 temp = (MCF_CCM_CDR & MCF_CCM_CDR_SSIDIV(0xF));


 MCF_CCM_CDR = ( 0
  | MCF_CCM_CDR_LPDIV(div)
  | MCF_CCM_CDR_SSIDIV(temp));

 MCF_CCM_MISCCR |= MCF_CCM_MISCCR_LIMP;

 return (FREF/(3*(1 << div)));
}
