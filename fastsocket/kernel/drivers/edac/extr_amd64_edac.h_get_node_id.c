
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pci_dev {int devfn; } ;


 scalar_t__ PCI_SLOT (int ) ;

__attribute__((used)) static inline u8 get_node_id(struct pci_dev *pdev)
{
 return PCI_SLOT(pdev->devfn) - 0x18;
}
