
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static inline int pci_enable_ats(struct pci_dev *dev, int ps)
{
 return -ENODEV;
}
