
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {int number; } ;


 int PCI_CLASS_STORAGE_SCSI ;
 int driver_name ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 struct pci_dev* pci_get_class (int,struct pci_dev*) ;
 int printk (char*,int ,int ,int ) ;

__attribute__((used)) static void enable_pci_ports(void)
{
}
