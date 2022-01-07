
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct radeon_device {TYPE_1__ vm_manager; } ;
struct radeon_bo_va {int bo_list; TYPE_2__* vm; int vm_list; int bo; scalar_t__ soffset; } ;
struct TYPE_4__ {int mutex; } ;


 int kfree (struct radeon_bo_va*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radeon_vm_bo_update_pte (struct radeon_device*,TYPE_2__*,int ,int *) ;

int radeon_vm_bo_rmv(struct radeon_device *rdev,
       struct radeon_bo_va *bo_va)
{
 int r = 0;

 mutex_lock(&rdev->vm_manager.lock);
 mutex_lock(&bo_va->vm->mutex);
 if (bo_va->soffset) {
  r = radeon_vm_bo_update_pte(rdev, bo_va->vm, bo_va->bo, ((void*)0));
 }
 mutex_unlock(&rdev->vm_manager.lock);
 list_del(&bo_va->vm_list);
 mutex_unlock(&bo_va->vm->mutex);
 list_del(&bo_va->bo_list);

 kfree(bo_va);
 return r;
}
