
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int devfn; TYPE_1__* bus; } ;
struct irte {int dummy; } ;
struct TYPE_2__ {int number; int parent; } ;


 int SQ_ALL_16 ;
 int SVT_VERIFY_BUS ;
 int SVT_VERIFY_SID_SQ ;
 struct pci_dev* pci_find_upstream_pcie_bridge (struct pci_dev*) ;
 scalar_t__ pci_is_pcie (struct pci_dev*) ;
 int set_irte_sid (struct irte*,int ,int ,int) ;

int set_msi_sid(struct irte *irte, struct pci_dev *dev)
{
 struct pci_dev *bridge;

 if (!irte || !dev)
  return -1;


 if (pci_is_pcie(dev) || !dev->bus->parent) {
  set_irte_sid(irte, SVT_VERIFY_SID_SQ, SQ_ALL_16,
        (dev->bus->number << 8) | dev->devfn);
  return 0;
 }

 bridge = pci_find_upstream_pcie_bridge(dev);
 if (bridge) {
  if (pci_is_pcie(bridge))
   set_irte_sid(irte, SVT_VERIFY_BUS, SQ_ALL_16,
    (bridge->bus->number << 8) | dev->bus->number);
  else
   set_irte_sid(irte, SVT_VERIFY_SID_SQ, SQ_ALL_16,
    (bridge->bus->number << 8) | bridge->devfn);
 }

 return 0;
}
