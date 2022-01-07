
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int mtype_cap; int get_sdram_scrub_rate; int set_sdram_scrub_rate; int * ctl_page_to_phys; int dev_name; int ctl_name; int mod_ver; int mod_name; int edac_cap; int edac_ctl_cap; struct amd64_pvt* pvt_info; } ;
struct amd64_pvt {int nbcap; int F2; } ;
struct amd64_family_type {int ctl_name; } ;


 int EDAC_AMD64_VERSION ;
 int EDAC_FLAG_NONE ;
 int EDAC_FLAG_S4ECD4ED ;
 int EDAC_FLAG_SECDED ;
 int EDAC_MOD_STR ;
 int MEM_FLAG_DDR2 ;
 int MEM_FLAG_RDDR2 ;
 int NBCAP_CHIPKILL ;
 int NBCAP_SECDED ;
 int amd64_determine_edac_cap (struct amd64_pvt*) ;
 int amd64_get_scrub_rate ;
 int amd64_set_scrub_rate ;
 int pci_name (int ) ;

__attribute__((used)) static void setup_mci_misc_attrs(struct mem_ctl_info *mci,
     struct amd64_family_type *fam)
{
 struct amd64_pvt *pvt = mci->pvt_info;

 mci->mtype_cap = MEM_FLAG_DDR2 | MEM_FLAG_RDDR2;
 mci->edac_ctl_cap = EDAC_FLAG_NONE;

 if (pvt->nbcap & NBCAP_SECDED)
  mci->edac_ctl_cap |= EDAC_FLAG_SECDED;

 if (pvt->nbcap & NBCAP_CHIPKILL)
  mci->edac_ctl_cap |= EDAC_FLAG_S4ECD4ED;

 mci->edac_cap = amd64_determine_edac_cap(pvt);
 mci->mod_name = EDAC_MOD_STR;
 mci->mod_ver = EDAC_AMD64_VERSION;
 mci->ctl_name = fam->ctl_name;
 mci->dev_name = pci_name(pvt->F2);
 mci->ctl_page_to_phys = ((void*)0);


 mci->set_sdram_scrub_rate = amd64_set_scrub_rate;
 mci->get_sdram_scrub_rate = amd64_get_scrub_rate;
}
