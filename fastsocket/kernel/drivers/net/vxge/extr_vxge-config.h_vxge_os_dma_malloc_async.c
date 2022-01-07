
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int gfp_t ;


 int GFP_ATOMIC ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 scalar_t__ in_interrupt () ;
 void* kmalloc (unsigned long,int) ;
 int vxge_hw_blockpool_block_add (void*,void*,unsigned long,struct pci_dev*,struct pci_dev*) ;

__attribute__((used)) static inline void vxge_os_dma_malloc_async(struct pci_dev *pdev, void *devh,
     unsigned long size)
{
 gfp_t flags;
 void *vaddr;

 if (in_interrupt())
  flags = GFP_ATOMIC | GFP_DMA;
 else
  flags = GFP_KERNEL | GFP_DMA;

 vaddr = kmalloc((size), flags);

 vxge_hw_blockpool_block_add(devh, vaddr, size, pdev, pdev);
}
