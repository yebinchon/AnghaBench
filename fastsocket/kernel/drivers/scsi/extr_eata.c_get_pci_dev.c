
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {int number; } ;


 unsigned int PCI_BASE_ADDRESS_0 ;
 int PCI_CLASS_STORAGE_SCSI ;
 int driver_name ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_class (int,struct pci_dev*) ;
 unsigned int pci_resource_start (struct pci_dev*,int ) ;
 int printk (char*,int ,int ,int ,unsigned int) ;

__attribute__((used)) static struct pci_dev *get_pci_dev(unsigned long port_base)
{
 return ((void*)0);
}
