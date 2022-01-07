
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_pgtable {int * slist; int nents; } ;
struct pci_dev {int dummy; } ;


 int PCI_DMA_FROMDEVICE ;
 int kfree (int *) ;
 int pci_unmap_sg (struct pci_dev*,int *,int ,int ) ;
 int saa7146_pgtable_free (struct pci_dev*,struct saa7146_pgtable*) ;
 int vfree (void*) ;

void saa7146_vfree_destroy_pgtable(struct pci_dev *pci, void *mem, struct saa7146_pgtable *pt)
{
 pci_unmap_sg(pci, pt->slist, pt->nents, PCI_DMA_FROMDEVICE);
 saa7146_pgtable_free(pci, pt);
 kfree(pt->slist);
 pt->slist = ((void*)0);
 vfree(mem);
}
