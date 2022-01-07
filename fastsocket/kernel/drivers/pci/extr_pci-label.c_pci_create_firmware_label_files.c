
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 scalar_t__ device_has_dsm (int *) ;
 int pci_create_acpi_index_label_files (struct pci_dev*) ;
 int pci_create_smbiosname_file (struct pci_dev*) ;

void pci_create_firmware_label_files(struct pci_dev *pdev)
{
 if (device_has_dsm(&pdev->dev))
  pci_create_acpi_index_label_files(pdev);
 else
  pci_create_smbiosname_file(pdev);
}
