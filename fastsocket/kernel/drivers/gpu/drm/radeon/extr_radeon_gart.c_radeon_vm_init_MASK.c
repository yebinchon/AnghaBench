#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct radeon_vm {int /*<<< orphan*/  va; int /*<<< orphan*/  list; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * fence; scalar_t__ id; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct radeon_device *rdev, struct radeon_vm *vm)
{
	vm->id = 0;
	vm->fence = NULL;
	FUNC1(&vm->mutex);
	FUNC0(&vm->list);
	FUNC0(&vm->va);
}