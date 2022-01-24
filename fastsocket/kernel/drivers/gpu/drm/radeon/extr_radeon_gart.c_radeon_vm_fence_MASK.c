#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct radeon_vm {size_t id; void* fence; } ;
struct radeon_fence {int dummy; } ;
struct TYPE_2__ {void** active; } ;
struct radeon_device {TYPE_1__ vm_manager; } ;

/* Variables and functions */
 void* FUNC0 (struct radeon_fence*) ; 
 int /*<<< orphan*/  FUNC1 (void**) ; 

void FUNC2(struct radeon_device *rdev,
		     struct radeon_vm *vm,
		     struct radeon_fence *fence)
{
	FUNC1(&rdev->vm_manager.active[vm->id]);
	rdev->vm_manager.active[vm->id] = FUNC0(fence);

	FUNC1(&vm->fence);
	vm->fence = FUNC0(fence);
}