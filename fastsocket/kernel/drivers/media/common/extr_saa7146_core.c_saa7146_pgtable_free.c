
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_pgtable {int * cpu; int dma; int size; } ;
struct pci_dev {int dummy; } ;


 int pci_free_consistent (struct pci_dev*,int ,int *,int ) ;

void saa7146_pgtable_free(struct pci_dev *pci, struct saa7146_pgtable *pt)
{
 if (((void*)0) == pt->cpu)
  return;
 pci_free_consistent(pci, pt->size, pt->cpu, pt->dma);
 pt->cpu = ((void*)0);
}
