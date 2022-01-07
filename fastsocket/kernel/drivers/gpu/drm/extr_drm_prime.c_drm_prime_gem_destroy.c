
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;
struct drm_gem_object {struct dma_buf_attachment* import_attach; } ;
struct dma_buf_attachment {struct dma_buf* dmabuf; } ;
struct dma_buf {int dummy; } ;


 int DMA_BIDIRECTIONAL ;
 int dma_buf_detach (struct dma_buf*,struct dma_buf_attachment*) ;
 int dma_buf_put (struct dma_buf*) ;
 int dma_buf_unmap_attachment (struct dma_buf_attachment*,struct sg_table*,int ) ;

void drm_prime_gem_destroy(struct drm_gem_object *obj, struct sg_table *sg)
{
 struct dma_buf_attachment *attach;
 struct dma_buf *dma_buf;
 attach = obj->import_attach;
 if (sg)
  dma_buf_unmap_attachment(attach, sg, DMA_BIDIRECTIONAL);
 dma_buf = attach->dmabuf;
 dma_buf_detach(attach->dmabuf, attach);

 dma_buf_put(dma_buf);
}
