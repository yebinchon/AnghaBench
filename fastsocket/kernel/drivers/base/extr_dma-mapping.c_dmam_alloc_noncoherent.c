
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_devres {size_t size; int dma_handle; void* vaddr; } ;
struct device {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int devres_add (struct device*,struct dma_devres*) ;
 struct dma_devres* devres_alloc (int ,int,int ) ;
 int devres_free (struct dma_devres*) ;
 void* dma_alloc_noncoherent (struct device*,size_t,int *,int ) ;
 int dmam_noncoherent_release ;

void *dmam_alloc_noncoherent(struct device *dev, size_t size,
        dma_addr_t *dma_handle, gfp_t gfp)
{
 struct dma_devres *dr;
 void *vaddr;

 dr = devres_alloc(dmam_noncoherent_release, sizeof(*dr), gfp);
 if (!dr)
  return ((void*)0);

 vaddr = dma_alloc_noncoherent(dev, size, dma_handle, gfp);
 if (!vaddr) {
  devres_free(dr);
  return ((void*)0);
 }

 dr->vaddr = vaddr;
 dr->dma_handle = *dma_handle;
 dr->size = size;

 devres_add(dev, dr);

 return vaddr;
}
