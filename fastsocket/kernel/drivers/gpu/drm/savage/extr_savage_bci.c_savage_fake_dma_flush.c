
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {size_t first_dma_page; size_t current_dma_page; TYPE_2__* dma_pages; TYPE_1__* cmd_dma; } ;
typedef TYPE_3__ drm_savage_private_t ;
struct TYPE_6__ {unsigned int used; } ;
struct TYPE_5__ {scalar_t__ handle; } ;


 int BCI_LOCALS ;
 int BCI_WRITE (int ) ;
 int BEGIN_BCI (unsigned int) ;
 int DRM_DEBUG (char*,size_t,size_t,unsigned int) ;
 int DRM_ERROR (char*,unsigned int,unsigned int) ;
 unsigned int SAVAGE_DMA_PAGE_SIZE ;

__attribute__((used)) static void savage_fake_dma_flush(drm_savage_private_t * dev_priv)
{
 unsigned int i, j;
 BCI_LOCALS;

 if (dev_priv->first_dma_page == dev_priv->current_dma_page &&
     dev_priv->dma_pages[dev_priv->current_dma_page].used == 0)
  return;

 DRM_DEBUG("first=%u, cur=%u, cur->used=%u\n",
    dev_priv->first_dma_page, dev_priv->current_dma_page,
    dev_priv->dma_pages[dev_priv->current_dma_page].used);

 for (i = dev_priv->first_dma_page;
      i <= dev_priv->current_dma_page && dev_priv->dma_pages[i].used;
      ++i) {
  uint32_t *dma_ptr = (uint32_t *) dev_priv->cmd_dma->handle +
      i * SAVAGE_DMA_PAGE_SIZE;
  BEGIN_BCI(dev_priv->dma_pages[i].used);
  for (j = 0; j < dev_priv->dma_pages[i].used; ++j) {
   BCI_WRITE(dma_ptr[j]);
  }
  dev_priv->dma_pages[i].used = 0;
 }


 dev_priv->first_dma_page = dev_priv->current_dma_page = 0;
}
