
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MDCNFG ;
 int MDCNFG_DE0 ;
 int MDCNFG_DE1 ;
 int MDCNFG_DE2 ;
 int MDCNFG_DE3 ;
 unsigned int MDCNFG_DRAC0 (int) ;
 unsigned int MDCNFG_DRAC2 (int) ;
 int max (unsigned int,unsigned int) ;
 int sdram_rows ;

__attribute__((used)) static void init_sdram_rows(void)
{
 uint32_t mdcnfg = MDCNFG;
 unsigned int drac2 = 0, drac0 = 0;

 if (mdcnfg & (MDCNFG_DE2 | MDCNFG_DE3))
  drac2 = MDCNFG_DRAC2(mdcnfg);

 if (mdcnfg & (MDCNFG_DE0 | MDCNFG_DE1))
  drac0 = MDCNFG_DRAC0(mdcnfg);

 sdram_rows = 1 << (11 + max(drac0, drac2));
}
