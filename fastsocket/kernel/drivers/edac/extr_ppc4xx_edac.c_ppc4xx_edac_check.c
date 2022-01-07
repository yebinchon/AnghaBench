
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc4xx_ecc_status {int ecces; } ;
struct mem_ctl_info {int dummy; } ;


 int SDRAM_ECCES_CE ;
 int SDRAM_ECCES_UE ;
 int ppc4xx_ecc_clear_status (struct mem_ctl_info*,struct ppc4xx_ecc_status*) ;
 int ppc4xx_ecc_dump_status (struct mem_ctl_info*,struct ppc4xx_ecc_status*) ;
 int ppc4xx_ecc_get_status (struct mem_ctl_info*,struct ppc4xx_ecc_status*) ;
 int ppc4xx_edac_handle_ce (struct mem_ctl_info*,struct ppc4xx_ecc_status*) ;
 int ppc4xx_edac_handle_ue (struct mem_ctl_info*,struct ppc4xx_ecc_status*) ;

__attribute__((used)) static void
ppc4xx_edac_check(struct mem_ctl_info *mci)
{



 struct ppc4xx_ecc_status status;

 ppc4xx_ecc_get_status(mci, &status);






 if (status.ecces & SDRAM_ECCES_UE)
  ppc4xx_edac_handle_ue(mci, &status);

 if (status.ecces & SDRAM_ECCES_CE)
  ppc4xx_edac_handle_ce(mci, &status);

 ppc4xx_ecc_clear_status(mci, &status);
}
