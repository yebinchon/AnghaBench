
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int import_attach; } ;
struct drm_i915_gem_object {int has_dma_mapping; int pages; TYPE_1__ base; } ;


 int DMA_BIDIRECTIONAL ;
 int dma_buf_unmap_attachment (int ,int ,int ) ;

__attribute__((used)) static void i915_gem_object_put_pages_dmabuf(struct drm_i915_gem_object *obj)
{
 dma_buf_unmap_attachment(obj->base.import_attach,
     obj->pages, DMA_BIDIRECTIONAL);
 obj->has_dma_mapping = 0;
}
