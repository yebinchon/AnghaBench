
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_pgtable {int nents; int * slist; } ;
struct pci_dev {int dummy; } ;


 long PAGE_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 int kfree (int *) ;
 int pci_map_sg (struct pci_dev*,int *,int,int ) ;
 int pci_unmap_sg (struct pci_dev*,int *,int,int ) ;
 scalar_t__ saa7146_pgtable_alloc (struct pci_dev*,struct saa7146_pgtable*) ;
 scalar_t__ saa7146_pgtable_build_single (struct pci_dev*,struct saa7146_pgtable*,int *,int) ;
 int saa7146_pgtable_free (struct pci_dev*,struct saa7146_pgtable*) ;
 int vfree (void*) ;
 void* vmalloc_32 (long) ;
 int * vmalloc_to_sg (void*,int) ;

void *saa7146_vmalloc_build_pgtable(struct pci_dev *pci, long length, struct saa7146_pgtable *pt)
{
 int pages = (length+PAGE_SIZE-1)/PAGE_SIZE;
 void *mem = vmalloc_32(length);
 int slen = 0;

 if (((void*)0) == mem)
  goto err_null;

 if (!(pt->slist = vmalloc_to_sg(mem, pages)))
  goto err_free_mem;

 if (saa7146_pgtable_alloc(pci, pt))
  goto err_free_slist;

 pt->nents = pages;
 slen = pci_map_sg(pci,pt->slist,pt->nents,PCI_DMA_FROMDEVICE);
 if (0 == slen)
  goto err_free_pgtable;

 if (0 != saa7146_pgtable_build_single(pci, pt, pt->slist, slen))
  goto err_unmap_sg;

 return mem;

err_unmap_sg:
 pci_unmap_sg(pci, pt->slist, pt->nents, PCI_DMA_FROMDEVICE);
err_free_pgtable:
 saa7146_pgtable_free(pci, pt);
err_free_slist:
 kfree(pt->slist);
 pt->slist = ((void*)0);
err_free_mem:
 vfree(mem);
err_null:
 return ((void*)0);
}
