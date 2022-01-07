
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ttm_placement {int dummy; } ;
struct ttm_mem_type_manager {int bdev; } ;
struct ttm_mem_reg {int num_pages; int page_alignment; int start; struct nouveau_mem* mm_node; } ;
struct ttm_buffer_object {int dummy; } ;
struct nouveau_mem {int page_shift; int offset; } ;
struct TYPE_2__ {int (* get ) (struct nouveau_fb*,int,int,int,int,struct nouveau_mem**) ;} ;
struct nouveau_fb {TYPE_1__ ram; } ;
struct nouveau_drm {int device; } ;
struct nouveau_bo {int tile_flags; int page_shift; } ;


 int ENOSPC ;
 int NOUVEAU_GEM_TILE_NONCONTIG ;
 int PAGE_SHIFT ;
 struct nouveau_drm* nouveau_bdev (int ) ;
 struct nouveau_bo* nouveau_bo (struct ttm_buffer_object*) ;
 struct nouveau_fb* nouveau_fb (int ) ;
 int stub1 (struct nouveau_fb*,int,int,int,int,struct nouveau_mem**) ;

__attribute__((used)) static int
nouveau_vram_manager_new(struct ttm_mem_type_manager *man,
    struct ttm_buffer_object *bo,
    struct ttm_placement *placement,
    struct ttm_mem_reg *mem)
{
 struct nouveau_drm *drm = nouveau_bdev(man->bdev);
 struct nouveau_fb *pfb = nouveau_fb(drm->device);
 struct nouveau_bo *nvbo = nouveau_bo(bo);
 struct nouveau_mem *node;
 u32 size_nc = 0;
 int ret;

 if (nvbo->tile_flags & NOUVEAU_GEM_TILE_NONCONTIG)
  size_nc = 1 << nvbo->page_shift;

 ret = pfb->ram.get(pfb, mem->num_pages << PAGE_SHIFT,
      mem->page_alignment << PAGE_SHIFT, size_nc,
      (nvbo->tile_flags >> 8) & 0x3ff, &node);
 if (ret) {
  mem->mm_node = ((void*)0);
  return (ret == -ENOSPC) ? 0 : ret;
 }

 node->page_shift = nvbo->page_shift;

 mem->mm_node = node;
 mem->start = node->offset >> PAGE_SHIFT;
 return 0;
}
