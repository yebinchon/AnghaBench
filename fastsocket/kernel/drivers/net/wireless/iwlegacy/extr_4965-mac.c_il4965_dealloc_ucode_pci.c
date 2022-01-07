
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int ucode_boot; int pci_dev; int ucode_init_data; int ucode_init; int ucode_data_backup; int ucode_data; int ucode_code; } ;


 int il_free_fw_desc (int ,int *) ;

__attribute__((used)) static void
il4965_dealloc_ucode_pci(struct il_priv *il)
{
 il_free_fw_desc(il->pci_dev, &il->ucode_code);
 il_free_fw_desc(il->pci_dev, &il->ucode_data);
 il_free_fw_desc(il->pci_dev, &il->ucode_data_backup);
 il_free_fw_desc(il->pci_dev, &il->ucode_init);
 il_free_fw_desc(il->pci_dev, &il->ucode_init_data);
 il_free_fw_desc(il->pci_dev, &il->ucode_boot);
}
