
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int dev_attr_devspec ;
 int device_create_file (int *,int *) ;

int pcibios_add_platform_entries(struct pci_dev *pdev)
{
 return device_create_file(&pdev->dev, &dev_attr_devspec);
}
