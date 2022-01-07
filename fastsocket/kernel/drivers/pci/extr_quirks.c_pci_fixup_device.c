
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef enum pci_fixup_pass { ____Placeholder_pci_fixup_pass } pci_fixup_pass ;



void pci_fixup_device(enum pci_fixup_pass pass, struct pci_dev *dev) {}
