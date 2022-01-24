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
struct intel_shared_regs {int core_id; TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EXTRA_REG_MAX ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct intel_shared_regs* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct intel_shared_regs *FUNC3(int cpu)
{
	struct intel_shared_regs *regs;
	int i;

	regs = FUNC1(sizeof(struct intel_shared_regs),
			    GFP_KERNEL, FUNC0(cpu));
	if (regs) {
		/*
		 * initialize the locks to keep lockdep happy
		 */
		for (i = 0; i < EXTRA_REG_MAX; i++)
			FUNC2(&regs->regs[i].lock);

		regs->core_id = -1;
	}
	return regs;
}