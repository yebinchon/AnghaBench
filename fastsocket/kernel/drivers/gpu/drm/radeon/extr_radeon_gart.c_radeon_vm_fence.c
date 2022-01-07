
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_vm {size_t id; void* fence; } ;
struct radeon_fence {int dummy; } ;
struct TYPE_2__ {void** active; } ;
struct radeon_device {TYPE_1__ vm_manager; } ;


 void* radeon_fence_ref (struct radeon_fence*) ;
 int radeon_fence_unref (void**) ;

void radeon_vm_fence(struct radeon_device *rdev,
       struct radeon_vm *vm,
       struct radeon_fence *fence)
{
 radeon_fence_unref(&rdev->vm_manager.active[vm->id]);
 rdev->vm_manager.active[vm->id] = radeon_fence_ref(fence);

 radeon_fence_unref(&vm->fence);
 vm->fence = radeon_fence_ref(fence);
}
