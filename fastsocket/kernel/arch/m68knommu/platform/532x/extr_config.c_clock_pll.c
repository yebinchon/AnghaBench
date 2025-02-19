
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BUSDIV ;
 int DEFAULT_LPD ;
 int FREF ;
 int MAX_FSYS ;
 int MCF_PLL_PFDR ;
 int MCF_PLL_PODR ;
 int MCF_PLL_PODR_BUSDIV (int) ;
 int MCF_PLL_PODR_CPUDIV (int) ;
 int MCF_SDRAMC_LIMP_FIX ;
 int MCF_SDRAMC_REFRESH ;
 int MCF_SDRAMC_SDCR ;
 int MCF_SDRAMC_SDCR_CKE ;
 int MCF_SDRAMC_SDCR_REF ;
 int MIN_FSYS ;
 int clock_exit_limp () ;
 int clock_limp (int ) ;

int clock_pll(int fsys, int flags)
{
 int fref, temp, fout, mfd;
 u32 i;

 fref = FREF;

 if (fsys == 0) {

  mfd = MCF_PLL_PFDR;

  return (fref * mfd / (BUSDIV * 4));
 }


 if (fsys > MAX_FSYS)
  fsys = MAX_FSYS;
 if (fsys < MIN_FSYS)
  fsys = MIN_FSYS;





 temp = 100 * fsys / fref;
 mfd = 4 * BUSDIV * temp / 100;


 fout = (fref * mfd / (BUSDIV * 4));






 if (MCF_SDRAMC_SDCR & MCF_SDRAMC_SDCR_REF)

  MCF_SDRAMC_SDCR &= ~MCF_SDRAMC_SDCR_CKE;







 clock_limp(DEFAULT_LPD);


 MCF_PLL_PODR = (0
  | MCF_PLL_PODR_CPUDIV(BUSDIV/3)
  | MCF_PLL_PODR_BUSDIV(BUSDIV));

 MCF_PLL_PFDR = mfd;


 clock_exit_limp();




 if (MCF_SDRAMC_SDCR & MCF_SDRAMC_SDCR_REF)

  MCF_SDRAMC_SDCR |= MCF_SDRAMC_SDCR_CKE;


 MCF_SDRAMC_LIMP_FIX = MCF_SDRAMC_REFRESH;


 for (i = 0; i < 0x200; i++)
  ;

 return fout;
}
