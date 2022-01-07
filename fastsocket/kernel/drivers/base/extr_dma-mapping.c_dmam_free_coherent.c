
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_devres {size_t member_0; void* member_1; int member_2; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int WARN_ON (int ) ;
 int devres_destroy (struct device*,int ,int ,struct dma_devres*) ;
 int dma_free_coherent (struct device*,size_t,void*,int ) ;
 int dmam_coherent_release ;
 int dmam_match ;

void dmam_free_coherent(struct device *dev, size_t size, void *vaddr,
   dma_addr_t dma_handle)
{
 struct dma_devres match_data = { size, vaddr, dma_handle };

 dma_free_coherent(dev, size, vaddr, dma_handle);
 WARN_ON(devres_destroy(dev, dmam_coherent_release, dmam_match,
          &match_data));
}
