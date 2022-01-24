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
struct task_struct {int dummy; } ;
struct TYPE_2__ {int id; } ;
struct mm_struct {TYPE_1__ context; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_CONTEXT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  mmu_context_idr ; 
 int /*<<< orphan*/  mmu_context_lock ; 
 int /*<<< orphan*/  mmu_virtual_psize ; 
 scalar_t__ FUNC3 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct task_struct *tsk, struct mm_struct *mm)
{
	int index;
	int err;

again:
	if (!FUNC1(&mmu_context_idr, GFP_KERNEL))
		return -ENOMEM;

	FUNC5(&mmu_context_lock);
	err = FUNC0(&mmu_context_idr, NULL, 1, &index);
	FUNC6(&mmu_context_lock);

	if (err == -EAGAIN)
		goto again;
	else if (err)
		return err;

	if (index > MAX_CONTEXT) {
		FUNC5(&mmu_context_lock);
		FUNC2(&mmu_context_idr, index);
		FUNC6(&mmu_context_lock);
		return -ENOMEM;
	}

	/* The old code would re-promote on fork, we don't do that
	 * when using slices as it could cause problem promoting slices
	 * that have been forced down to 4K
	 */
	if (FUNC3(mm))
		FUNC4(mm, mmu_virtual_psize);
	mm->context.id = index;

	return 0;
}