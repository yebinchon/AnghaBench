
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_device {TYPE_1__* pdev; } ;
struct TYPE_5__ {size_t size; int busaddr; scalar_t__ vaddr; } ;
typedef TYPE_2__ drm_dma_handle_t ;
struct TYPE_4__ {int dev; } ;


 int ClearPageReserved (int ) ;
 scalar_t__ PAGE_SIZE ;
 int dma_free_coherent (int *,size_t,scalar_t__,int ) ;
 int virt_to_page (unsigned long) ;

void __drm_pci_free(struct drm_device * dev, drm_dma_handle_t * dmah)
{

 unsigned long addr;
 size_t sz;


 if (dmah->vaddr) {


  for (addr = (unsigned long)dmah->vaddr, sz = dmah->size;
       sz > 0; addr += PAGE_SIZE, sz -= PAGE_SIZE) {
   ClearPageReserved(virt_to_page(addr));
  }
  dma_free_coherent(&dev->pdev->dev, dmah->size, dmah->vaddr,
      dmah->busaddr);
 }
}
