
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 scalar_t__ device_has_dsm (int *) ;
 int pci_remove_acpi_index_label_files (struct pci_dev*) ;
 int pci_remove_smbiosname_file (struct pci_dev*) ;

void pci_remove_firmware_label_files(struct pci_dev *pdev)
{
 if (device_has_dsm(&pdev->dev))
  pci_remove_acpi_index_label_files(pdev);
 else
  pci_remove_smbiosname_file(pdev);
}
