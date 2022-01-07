
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int nb_ecc_prev; } ;
struct ecc_settings {int old_nbctl; int nbctl_valid; TYPE_1__ flags; } ;


 int NBCFG ;
 int NBCFG_ECC_ENABLE ;
 int NBCTL ;
 int ON ;
 int amd64_info (char*) ;
 int amd64_read_pci_cfg (struct pci_dev*,int ,int*) ;
 int amd64_warn (char*) ;
 int amd64_write_pci_cfg (struct pci_dev*,int ,int) ;
 int debugf0 (char*,int ,int,int) ;
 scalar_t__ toggle_ecc_err_reporting (struct ecc_settings*,int ,int ) ;

__attribute__((used)) static bool enable_ecc_error_reporting(struct ecc_settings *s, u8 nid,
           struct pci_dev *F3)
{
 bool ret = 1;
 u32 value, mask = 0x3;

 if (toggle_ecc_err_reporting(s, nid, ON)) {
  amd64_warn("Error enabling ECC reporting over MCGCTL!\n");
  return 0;
 }

 amd64_read_pci_cfg(F3, NBCTL, &value);

 s->old_nbctl = value & mask;
 s->nbctl_valid = 1;

 value |= mask;
 amd64_write_pci_cfg(F3, NBCTL, value);

 amd64_read_pci_cfg(F3, NBCFG, &value);

 debugf0("1: node %d, NBCFG=0x%08x[DramEccEn: %d]\n",
  nid, value, !!(value & NBCFG_ECC_ENABLE));

 if (!(value & NBCFG_ECC_ENABLE)) {
  amd64_warn("DRAM ECC disabled on this node, enabling...\n");

  s->flags.nb_ecc_prev = 0;


  value |= NBCFG_ECC_ENABLE;
  amd64_write_pci_cfg(F3, NBCFG, value);

  amd64_read_pci_cfg(F3, NBCFG, &value);

  if (!(value & NBCFG_ECC_ENABLE)) {
   amd64_warn("Hardware rejected DRAM ECC enable,"
       "check memory DIMM configuration.\n");
   ret = 0;
  } else {
   amd64_info("Hardware accepted DRAM ECC Enable\n");
  }
 } else {
  s->flags.nb_ecc_prev = 1;
 }

 debugf0("2: node %d, NBCFG=0x%08x[DramEccEn: %d]\n",
  nid, value, !!(value & NBCFG_ECC_ENABLE));

 return ret;
}
