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
struct intel_uncore_type {int num_shared_regs; } ;
struct intel_uncore_extra_reg {int dummy; } ;
struct intel_uncore_box {int cpu; int phys_id; int /*<<< orphan*/  refcnt; TYPE_1__* shared_regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int GFP_KERNEL ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct intel_uncore_box* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_uncore_box*) ; 

struct intel_uncore_box *FUNC5(struct intel_uncore_type *type, int cpu)
{
	struct intel_uncore_box *box;
	int i, size;

	size = sizeof(*box) + type->num_shared_regs * sizeof(struct intel_uncore_extra_reg);

	box = FUNC2(size, GFP_KERNEL | __GFP_ZERO, FUNC1(cpu));
	if (!box)
		return NULL;

	for (i = 0; i < type->num_shared_regs; i++)
		FUNC3(&box->shared_regs[i].lock);

	FUNC4(box);
	FUNC0(&box->refcnt, 1);
	box->cpu = -1;
	box->phys_id = -1;

	return box;
}