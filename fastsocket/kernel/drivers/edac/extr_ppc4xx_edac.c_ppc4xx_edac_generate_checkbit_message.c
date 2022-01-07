
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc4xx_edac_pdata {int dcr_host; } ;
struct ppc4xx_ecc_status {int ecces; } ;
struct mem_ctl_info {struct ppc4xx_edac_pdata* pvt_info; } ;





 int SDRAM_ECCES_CKBER_MASK ;

 int SDRAM_MCOPT1 ;


 int SDRAM_MCOPT1_WDTH_MASK ;
 int mfsdram (int *,int ) ;
 int snprintf (char*,size_t,char*,char const*) ;

__attribute__((used)) static int
ppc4xx_edac_generate_checkbit_message(const struct mem_ctl_info *mci,
          const struct ppc4xx_ecc_status *status,
          char *buffer,
          size_t size)
{
 const struct ppc4xx_edac_pdata *pdata = mci->pvt_info;
 const char *ckber = ((void*)0);

 switch (status->ecces & SDRAM_ECCES_CKBER_MASK) {
 case 130:
  ckber = "None";
  break;
 case 133:
  ckber = "ECC0:3";
  break;
 case 131:
  switch (mfsdram(&pdata->dcr_host, SDRAM_MCOPT1) &
   SDRAM_MCOPT1_WDTH_MASK) {
  case 129:
   ckber = "ECC0:3";
   break;
  case 128:
   ckber = "ECC4:8";
   break;
  default:
   ckber = "Unknown";
   break;
  }
  break;
 case 132:
  ckber = "ECC0:8";
  break;
 default:
  ckber = "Unknown";
  break;
 }

 return snprintf(buffer, size, "Checkbit Error: %s", ckber);
}
