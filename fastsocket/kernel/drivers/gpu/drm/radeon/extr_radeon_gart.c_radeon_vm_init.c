
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_vm {int va; int list; int mutex; int * fence; scalar_t__ id; } ;
struct radeon_device {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int mutex_init (int *) ;

void radeon_vm_init(struct radeon_device *rdev, struct radeon_vm *vm)
{
 vm->id = 0;
 vm->fence = ((void*)0);
 mutex_init(&vm->mutex);
 INIT_LIST_HEAD(&vm->list);
 INIT_LIST_HEAD(&vm->va);
}
