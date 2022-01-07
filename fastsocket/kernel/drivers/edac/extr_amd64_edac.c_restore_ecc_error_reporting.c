
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int nb_ecc_prev; } ;
struct ecc_settings {int old_nbctl; TYPE_1__ flags; int nbctl_valid; } ;


 int NBCFG ;
 int NBCFG_ECC_ENABLE ;
 int NBCTL ;
 int OFF ;
 int amd64_read_pci_cfg (struct pci_dev*,int ,int*) ;
 int amd64_warn (char*) ;
 int amd64_write_pci_cfg (struct pci_dev*,int ,int) ;
 scalar_t__ toggle_ecc_err_reporting (struct ecc_settings*,int ,int ) ;

__attribute__((used)) static void restore_ecc_error_reporting(struct ecc_settings *s, u8 nid,
     struct pci_dev *F3)
{
 u32 value, mask = 0x3;


 if (!s->nbctl_valid)
  return;

 amd64_read_pci_cfg(F3, NBCTL, &value);
 value &= ~mask;
 value |= s->old_nbctl;

 amd64_write_pci_cfg(F3, NBCTL, value);


 if (!s->flags.nb_ecc_prev) {
  amd64_read_pci_cfg(F3, NBCFG, &value);
  value &= ~NBCFG_ECC_ENABLE;
  amd64_write_pci_cfg(F3, NBCFG, value);
 }


 if (toggle_ecc_err_reporting(s, nid, OFF))
  amd64_warn("Error restoring NB MCGCTL settings!\n");
}
