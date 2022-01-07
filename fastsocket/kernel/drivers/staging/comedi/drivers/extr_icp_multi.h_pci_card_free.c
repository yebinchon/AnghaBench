
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcilst_struct {int pcidev; scalar_t__ used; } ;


 int comedi_pci_disable (int ) ;

__attribute__((used)) static int pci_card_free(struct pcilst_struct *inova)
{
 if (!inova)
  return -1;

 if (!inova->used)
  return 1;
 inova->used = 0;
 comedi_pci_disable(inova->pcidev);
 return 0;
}
