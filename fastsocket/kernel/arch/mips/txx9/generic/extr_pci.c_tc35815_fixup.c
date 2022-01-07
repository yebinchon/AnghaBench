
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ pm_cap; int dev; } ;


 int dev_info (int *,char*) ;

__attribute__((used)) static void tc35815_fixup(struct pci_dev *dev)
{

 if (dev->pm_cap) {
  dev_info(&dev->dev, "PM disabled\n");
  dev->pm_cap = 0;
 }
}
