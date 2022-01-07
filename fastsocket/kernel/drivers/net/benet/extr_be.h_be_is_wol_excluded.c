
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int subsystem_device; } ;
struct be_adapter {struct pci_dev* pdev; } ;






 int be_physfn (struct be_adapter*) ;

__attribute__((used)) static inline bool be_is_wol_excluded(struct be_adapter *adapter)
{
 struct pci_dev *pdev = adapter->pdev;

 if (!be_physfn(adapter))
  return 1;

 switch (pdev->subsystem_device) {
 case 131:
 case 130:
 case 129:
 case 128:
  return 1;
 default:
  return 0;
 }
}
