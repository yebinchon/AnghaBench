
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcilst_struct {int pcidev; scalar_t__ used; } ;


 int comedi_pci_disable (int ) ;

int i_pci_card_free(struct pcilst_struct *amcc)
{
 if (!amcc)
  return -1;

 if (!amcc->used)
  return 1;
 amcc->used = 0;
 comedi_pci_disable(amcc->pcidev);
 return 0;
}
