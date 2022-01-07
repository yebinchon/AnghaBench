
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int subordinate; } ;



__attribute__((used)) static inline bool pci_is_bridge(struct pci_dev *pci_dev)
{
 return !!(pci_dev->subordinate);
}
