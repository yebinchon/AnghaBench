
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int dev_attr_eeh_check_count ;
 int dev_attr_eeh_config_addr ;
 int dev_attr_eeh_false_positives ;
 int dev_attr_eeh_freeze_count ;
 int dev_attr_eeh_mode ;
 int dev_attr_eeh_pe_config_addr ;
 int device_remove_file (int *,int *) ;

void eeh_sysfs_remove_device(struct pci_dev *pdev)
{
 device_remove_file(&pdev->dev, &dev_attr_eeh_mode);
 device_remove_file(&pdev->dev, &dev_attr_eeh_config_addr);
 device_remove_file(&pdev->dev, &dev_attr_eeh_pe_config_addr);
 device_remove_file(&pdev->dev, &dev_attr_eeh_check_count);
 device_remove_file(&pdev->dev, &dev_attr_eeh_false_positives);
 device_remove_file(&pdev->dev, &dev_attr_eeh_freeze_count);
}
