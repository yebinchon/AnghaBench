
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int pci_pm; int debug_sleep_level_override; int sleep_cmd; } ;
struct il_priv {TYPE_1__ power_data; int pci_dev; } ;


 int PCI_EXP_LNKCTL ;
 int PCI_EXP_LNKCTL_ASPM_L0S ;
 int memset (int *,int ,int) ;
 int pcie_capability_read_word (int ,int ,int*) ;

void
il_power_initialize(struct il_priv *il)
{
 u16 lctl;

 pcie_capability_read_word(il->pci_dev, PCI_EXP_LNKCTL, &lctl);
 il->power_data.pci_pm = !(lctl & PCI_EXP_LNKCTL_ASPM_L0S);

 il->power_data.debug_sleep_level_override = -1;

 memset(&il->power_data.sleep_cmd, 0, sizeof(il->power_data.sleep_cmd));
}
