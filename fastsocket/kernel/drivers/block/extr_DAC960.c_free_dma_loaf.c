
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct dma_loaf {int dma_base; int * cpu_base; int length; } ;


 int pci_free_consistent (struct pci_dev*,int ,int *,int ) ;

__attribute__((used)) static void free_dma_loaf(struct pci_dev *dev, struct dma_loaf *loaf_handle)
{
 if (loaf_handle->cpu_base != ((void*)0))
  pci_free_consistent(dev, loaf_handle->length,
   loaf_handle->cpu_base, loaf_handle->dma_base);
}
