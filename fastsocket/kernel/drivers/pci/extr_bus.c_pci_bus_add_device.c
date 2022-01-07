
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int is_added; int dev; } ;


 int device_add (int *) ;
 int pci_create_sysfs_dev_files (struct pci_dev*) ;
 int pci_proc_attach_device (struct pci_dev*) ;

int pci_bus_add_device(struct pci_dev *dev)
{
 int retval;
 retval = device_add(&dev->dev);
 if (retval)
  return retval;

 dev->is_added = 1;
 pci_proc_attach_device(dev);
 pci_create_sysfs_dev_files(dev);
 return 0;
}
