
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_hw_ppgtt {int num_pd_entries; struct i915_hw_ppgtt* pt_pages; struct i915_hw_ppgtt* pt_dma_addr; TYPE_1__* dev; } ;
struct TYPE_2__ {int pdev; } ;


 int PCI_DMA_BIDIRECTIONAL ;
 int __free_page (struct i915_hw_ppgtt) ;
 int kfree (struct i915_hw_ppgtt*) ;
 int pci_unmap_page (int ,struct i915_hw_ppgtt,int,int ) ;

__attribute__((used)) static void gen6_ppgtt_cleanup(struct i915_hw_ppgtt *ppgtt)
{
 int i;

 if (ppgtt->pt_dma_addr) {
  for (i = 0; i < ppgtt->num_pd_entries; i++)
   pci_unmap_page(ppgtt->dev->pdev,
           ppgtt->pt_dma_addr[i],
           4096, PCI_DMA_BIDIRECTIONAL);
 }

 kfree(ppgtt->pt_dma_addr);
 for (i = 0; i < ppgtt->num_pd_entries; i++)
  __free_page(ppgtt->pt_pages[i]);
 kfree(ppgtt->pt_pages);
 kfree(ppgtt);
}
