
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_vm {int mutex; int va; } ;
struct radeon_device {int dummy; } ;
struct radeon_bo_va {int valid; int ref_count; int bo_list; int vm_list; scalar_t__ flags; scalar_t__ eoffset; scalar_t__ soffset; struct radeon_bo* bo; struct radeon_vm* vm; } ;
struct radeon_bo {int va; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct radeon_bo_va* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct radeon_bo_va *radeon_vm_bo_add(struct radeon_device *rdev,
          struct radeon_vm *vm,
          struct radeon_bo *bo)
{
 struct radeon_bo_va *bo_va;

 bo_va = kzalloc(sizeof(struct radeon_bo_va), GFP_KERNEL);
 if (bo_va == ((void*)0)) {
  return ((void*)0);
 }
 bo_va->vm = vm;
 bo_va->bo = bo;
 bo_va->soffset = 0;
 bo_va->eoffset = 0;
 bo_va->flags = 0;
 bo_va->valid = 0;
 bo_va->ref_count = 1;
 INIT_LIST_HEAD(&bo_va->bo_list);
 INIT_LIST_HEAD(&bo_va->vm_list);

 mutex_lock(&vm->mutex);
 list_add(&bo_va->vm_list, &vm->va);
 list_add_tail(&bo_va->bo_list, &bo->va);
 mutex_unlock(&vm->mutex);

 return bo_va;
}
