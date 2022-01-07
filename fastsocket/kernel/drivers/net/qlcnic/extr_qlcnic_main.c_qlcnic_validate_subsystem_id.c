
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {struct pci_dev* pdev; } ;
struct pci_dev {unsigned short subsystem_vendor; scalar_t__ device; scalar_t__ subsystem_device; } ;
struct TYPE_2__ {unsigned short sub_vendor; scalar_t__ sub_device; } ;


 scalar_t__ PCI_DEVICE_ID_QLOGIC_QLE824X ;
 scalar_t__ PCI_DEVICE_ID_QLOGIC_QLE834X ;
 TYPE_1__* qlcnic_boards ;

__attribute__((used)) static inline bool qlcnic_validate_subsystem_id(struct qlcnic_adapter *adapter,
      int index)
{
 struct pci_dev *pdev = adapter->pdev;
 unsigned short subsystem_vendor;
 bool ret = 1;

 subsystem_vendor = pdev->subsystem_vendor;

 if (pdev->device == PCI_DEVICE_ID_QLOGIC_QLE824X ||
     pdev->device == PCI_DEVICE_ID_QLOGIC_QLE834X) {
  if (qlcnic_boards[index].sub_vendor == subsystem_vendor &&
      qlcnic_boards[index].sub_device == pdev->subsystem_device)
   ret = 1;
  else
   ret = 0;
 }

 return ret;
}
