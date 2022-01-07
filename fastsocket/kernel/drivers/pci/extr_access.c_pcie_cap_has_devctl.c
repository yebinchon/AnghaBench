
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;



__attribute__((used)) static inline bool pcie_cap_has_devctl(const struct pci_dev *dev)
{
 return 1;
}
