
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nouveau_vma {int head; scalar_t__ node; } ;
struct TYPE_4__ {scalar_t__ mem_type; } ;
struct TYPE_6__ {TYPE_2__* bdev; TYPE_1__ mem; } ;
struct nouveau_bo {TYPE_3__ bo; } ;
struct TYPE_5__ {int fence_lock; } ;


 scalar_t__ TTM_PL_SYSTEM ;
 int list_del (int *) ;
 int nouveau_vm_put (struct nouveau_vma*) ;
 int nouveau_vm_unmap (struct nouveau_vma*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ttm_bo_wait (TYPE_3__*,int,int,int) ;

void
nouveau_bo_vma_del(struct nouveau_bo *nvbo, struct nouveau_vma *vma)
{
 if (vma->node) {
  if (nvbo->bo.mem.mem_type != TTM_PL_SYSTEM) {
   spin_lock(&nvbo->bo.bdev->fence_lock);
   ttm_bo_wait(&nvbo->bo, 0, 0, 0);
   spin_unlock(&nvbo->bo.bdev->fence_lock);
   nouveau_vm_unmap(vma);
  }

  nouveau_vm_put(vma);
  list_del(&vma->head);
 }
}
