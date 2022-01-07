
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sg_table {int dummy; } ;
struct TYPE_2__ {int import_attach; } ;
struct drm_i915_gem_object {int has_dma_mapping; struct sg_table* pages; TYPE_1__ base; } ;


 int DMA_BIDIRECTIONAL ;
 scalar_t__ IS_ERR (struct sg_table*) ;
 int PTR_ERR (struct sg_table*) ;
 struct sg_table* dma_buf_map_attachment (int ,int ) ;

__attribute__((used)) static int i915_gem_object_get_pages_dmabuf(struct drm_i915_gem_object *obj)
{
 struct sg_table *sg;

 sg = dma_buf_map_attachment(obj->base.import_attach, DMA_BIDIRECTIONAL);
 if (IS_ERR(sg))
  return PTR_ERR(sg);

 obj->pages = sg;
 obj->has_dma_mapping = 1;
 return 0;
}
