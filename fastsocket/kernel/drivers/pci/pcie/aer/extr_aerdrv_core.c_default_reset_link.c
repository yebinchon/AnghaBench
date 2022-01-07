
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
typedef int pci_ers_result_t ;


 int KERN_DEBUG ;
 int PCI_ERS_RESULT_RECOVERED ;
 int aer_do_secondary_bus_reset (struct pci_dev*) ;
 int dev_printk (int ,int *,char*) ;

__attribute__((used)) static pci_ers_result_t default_reset_link(struct pci_dev *dev)
{
 aer_do_secondary_bus_reset(dev);
 dev_printk(KERN_DEBUG, &dev->dev, "downstream link has been reset\n");
 return PCI_ERS_RESULT_RECOVERED;
}
