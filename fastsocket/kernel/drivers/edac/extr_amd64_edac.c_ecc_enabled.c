
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;


 int MSR_IA32_MCG_CTL ;
 int NBCFG ;
 int NBCFG_ECC_ENABLE ;
 int amd64_info (char*,char*) ;
 int amd64_nb_mce_bank_enabled_on_node (int) ;
 int amd64_notice (char*,int ,...) ;
 int amd64_read_pci_cfg (struct pci_dev*,int ,int*) ;
 int ecc_msg ;

__attribute__((used)) static bool ecc_enabled(struct pci_dev *F3, u8 nid)
{
 u32 value;
 u8 ecc_en = 0;
 bool nb_mce_en = 0;

 amd64_read_pci_cfg(F3, NBCFG, &value);

 ecc_en = !!(value & NBCFG_ECC_ENABLE);
 amd64_info("DRAM ECC %s.\n", (ecc_en ? "enabled" : "disabled"));

 nb_mce_en = amd64_nb_mce_bank_enabled_on_node(nid);
 if (!nb_mce_en)
  amd64_notice("NB MCE bank disabled, set MSR "
        "0x%08x[4] on node %d to enable.\n",
        MSR_IA32_MCG_CTL, nid);

 if (!ecc_en || !nb_mce_en) {
  amd64_notice("%s", ecc_msg);
  return 0;
 }
 return 1;
}
