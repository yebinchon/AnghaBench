
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device {int dummy; } ;
typedef int pgprot_t ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int GFP_DMA ;
 int get_coherent_dma_mask (struct device*) ;
 void* kmalloc (size_t,int ) ;
 int virt_to_dma (struct device*,void*) ;

__attribute__((used)) static void *
__dma_alloc(struct device *dev, size_t size, dma_addr_t *handle, gfp_t gfp,
     pgprot_t prot)
{
 void *virt;
 u64 mask = get_coherent_dma_mask(dev);

 if (!mask)
  goto error;

 if (mask < 0xffffffffULL)
  gfp |= GFP_DMA;
 virt = kmalloc(size, gfp);
 if (!virt)
  goto error;

 *handle = virt_to_dma(dev, virt);
 return virt;

error:
 *handle = ~0;
 return ((void*)0);
}
