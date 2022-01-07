
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int ENOTTY ;

int pci_dev_specific_reset(struct pci_dev *dev, int probe) { return -ENOTTY; }
