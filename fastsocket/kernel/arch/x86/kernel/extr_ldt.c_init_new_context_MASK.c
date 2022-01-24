#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int dummy; } ;
struct TYPE_5__ {scalar_t__ size; int /*<<< orphan*/  lock; } ;
struct mm_struct {TYPE_2__ context; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,TYPE_2__*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct task_struct *tsk, struct mm_struct *mm)
{
	struct mm_struct *old_mm;
	int retval = 0;

	FUNC1(&mm->context.lock);
	mm->context.size = 0;
	old_mm = current->mm;
	if (old_mm && old_mm->context.size > 0) {
		FUNC2(&old_mm->context.lock);
		retval = FUNC0(&mm->context, &old_mm->context);
		FUNC3(&old_mm->context.lock);
	}
	return retval;
}