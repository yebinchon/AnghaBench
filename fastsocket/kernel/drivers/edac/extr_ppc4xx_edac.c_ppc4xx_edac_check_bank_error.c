
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc4xx_ecc_status {int ecces; } ;


 int SDRAM_ECCES_BK0ER ;
 int SDRAM_ECCES_BK1ER ;

__attribute__((used)) static bool
ppc4xx_edac_check_bank_error(const struct ppc4xx_ecc_status *status,
        unsigned int bank)
{
 switch (bank) {
 case 0:
  return status->ecces & SDRAM_ECCES_BK0ER;
 case 1:
  return status->ecces & SDRAM_ECCES_BK1ER;
 default:
  return 0;
 }
}
