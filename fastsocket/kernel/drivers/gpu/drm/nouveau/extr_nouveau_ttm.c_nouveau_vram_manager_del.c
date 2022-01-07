
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_mem_type_manager {int bdev; } ;
struct ttm_mem_reg {int mm_node; } ;
struct nouveau_mem {int dummy; } ;
struct TYPE_2__ {int (* put ) (struct nouveau_fb*,struct nouveau_mem**) ;} ;
struct nouveau_fb {TYPE_1__ ram; } ;
struct nouveau_drm {int device; } ;


 struct nouveau_drm* nouveau_bdev (int ) ;
 struct nouveau_fb* nouveau_fb (int ) ;
 int nouveau_mem_node_cleanup (int ) ;
 int stub1 (struct nouveau_fb*,struct nouveau_mem**) ;

__attribute__((used)) static void
nouveau_vram_manager_del(struct ttm_mem_type_manager *man,
    struct ttm_mem_reg *mem)
{
 struct nouveau_drm *drm = nouveau_bdev(man->bdev);
 struct nouveau_fb *pfb = nouveau_fb(drm->device);
 nouveau_mem_node_cleanup(mem->mm_node);
 pfb->ram.put(pfb, (struct nouveau_mem **)&mem->mm_node);
}
