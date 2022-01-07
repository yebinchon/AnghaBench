
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_mem_reg {struct nouveau_mem* mm_node; } ;
struct ttm_bo_device {int dummy; } ;
struct TYPE_2__ {int node; } ;
struct nouveau_mem {TYPE_1__ bar_vma; } ;
struct nouveau_drm {int device; } ;
struct nouveau_bar {int (* unmap ) (struct nouveau_bar*,TYPE_1__*) ;} ;


 struct nouveau_bar* nouveau_bar (int ) ;
 struct nouveau_drm* nouveau_bdev (struct ttm_bo_device*) ;
 int stub1 (struct nouveau_bar*,TYPE_1__*) ;

__attribute__((used)) static void
nouveau_ttm_io_mem_free(struct ttm_bo_device *bdev, struct ttm_mem_reg *mem)
{
 struct nouveau_drm *drm = nouveau_bdev(bdev);
 struct nouveau_bar *bar = nouveau_bar(drm->device);
 struct nouveau_mem *node = mem->mm_node;

 if (!node->bar_vma.node)
  return;

 bar->unmap(bar, &node->bar_vma);
}
