
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_4__ {int function; int slot; int bus; } ;
struct TYPE_5__ {TYPE_1__ pci; } ;
struct TYPE_6__ {TYPE_2__ interface_path; } ;
struct edd_info {TYPE_3__ params; } ;
struct edd_device {int dummy; } ;


 int PCI_DEVFN (int ,int ) ;
 struct edd_info* edd_dev_get_info (struct edd_device*) ;
 scalar_t__ edd_dev_is_type (struct edd_device*,char*) ;
 struct pci_dev* pci_get_bus_and_slot (int ,int ) ;

__attribute__((used)) static struct pci_dev *
edd_get_pci_dev(struct edd_device *edev)
{
 struct edd_info *info = edd_dev_get_info(edev);

 if (edd_dev_is_type(edev, "PCI") || edd_dev_is_type(edev, "XPRS")) {
  return pci_get_bus_and_slot(info->params.interface_path.pci.bus,
         PCI_DEVFN(info->params.interface_path.pci.slot,
            info->params.interface_path.pci.
            function));
 }
 return ((void*)0);
}
