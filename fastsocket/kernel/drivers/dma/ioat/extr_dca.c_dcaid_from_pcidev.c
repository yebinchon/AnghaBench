
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {int number; } ;



__attribute__((used)) static inline u16 dcaid_from_pcidev(struct pci_dev *pci)
{
 return (pci->bus->number << 8) | pci->devfn;
}
