
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ttm_mem_reg {struct nouveau_mem* mm_node; } ;
struct ttm_buffer_object {struct ttm_mem_reg mem; int bdev; } ;
struct nouveau_mem {int * vma; } ;
struct TYPE_4__ {int (* move ) (struct nouveau_channel*,struct ttm_buffer_object*,struct ttm_mem_reg*,struct ttm_mem_reg*) ;} ;
struct nouveau_drm {TYPE_1__ ttm; int device; struct nouveau_channel* channel; } ;
struct nouveau_channel {TYPE_2__* cli; } ;
struct nouveau_bo {int dummy; } ;
struct TYPE_6__ {scalar_t__ card_type; } ;
struct TYPE_5__ {int mutex; } ;


 scalar_t__ NV_50 ;
 struct nouveau_channel* chan ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct nouveau_drm* nouveau_bdev (int ) ;
 struct nouveau_bo* nouveau_bo (struct ttm_buffer_object*) ;
 int nouveau_bo_move_accel_cleanup (struct nouveau_channel*,struct nouveau_bo*,int,int,struct ttm_mem_reg*) ;
 int nouveau_vma_getmap (struct nouveau_channel*,struct nouveau_bo*,struct ttm_mem_reg*,int *) ;
 TYPE_3__* nv_device (int ) ;
 int stub1 (struct nouveau_channel*,struct ttm_buffer_object*,struct ttm_mem_reg*,struct ttm_mem_reg*) ;

__attribute__((used)) static int
nouveau_bo_move_m2mf(struct ttm_buffer_object *bo, int evict, bool intr,
       bool no_wait_gpu, struct ttm_mem_reg *new_mem)
{
 struct nouveau_drm *drm = nouveau_bdev(bo->bdev);
 struct nouveau_channel *chan = chan = drm->channel;
 struct nouveau_bo *nvbo = nouveau_bo(bo);
 struct ttm_mem_reg *old_mem = &bo->mem;
 int ret;

 mutex_lock(&chan->cli->mutex);





 if (nv_device(drm->device)->card_type >= NV_50) {
  struct nouveau_mem *node = old_mem->mm_node;

  ret = nouveau_vma_getmap(chan, nvbo, old_mem, &node->vma[0]);
  if (ret)
   goto out;

  ret = nouveau_vma_getmap(chan, nvbo, new_mem, &node->vma[1]);
  if (ret)
   goto out;
 }

 ret = drm->ttm.move(chan, bo, &bo->mem, new_mem);
 if (ret == 0) {
  ret = nouveau_bo_move_accel_cleanup(chan, nvbo, evict,
          no_wait_gpu, new_mem);
 }

out:
 mutex_unlock(&chan->cli->mutex);
 return ret;
}
