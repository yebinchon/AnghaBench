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
struct task_struct {struct mm_struct* active_mm; struct mm_struct* mm; } ;
struct TYPE_2__ {int alloc_pgste; scalar_t__ has_pgste; } ;
struct mm_struct {int /*<<< orphan*/  ioctx_list; int /*<<< orphan*/  mm_users; TYPE_1__ context; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ HOME_SPACE_MODE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct task_struct* current ; 
 struct mm_struct* FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC10 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct mm_struct*,struct task_struct*) ; 
 scalar_t__ user_mode ; 

int FUNC12(void)
{
	struct task_struct *tsk = current;
	struct mm_struct *mm, *old_mm;

	/* Do we have switched amode? If no, we cannot do sie */
	if (user_mode == HOME_SPACE_MODE)
		return -EINVAL;

	/* Do we have pgstes? if yes, we are done */
	if (tsk->mm->context.has_pgste)
		return 0;

	/* lets check if we are allowed to replace the mm */
	FUNC9(tsk);
	if (!tsk->mm || FUNC0(&tsk->mm->mm_users) > 1 ||
#ifdef CONFIG_AIO
	    !hlist_empty(&tsk->mm->ioctx_list) ||
#endif
	    tsk->mm != tsk->active_mm) {
		FUNC10(tsk);
		return -EINVAL;
	}
	FUNC10(tsk);

	/* we copy the mm and let dup_mm create the page tables with_pgstes */
	tsk->mm->context.alloc_pgste = 1;
	mm = FUNC2(tsk);
	tsk->mm->context.alloc_pgste = 0;
	if (!mm)
		return -ENOMEM;

	/* Now lets check again if something happened */
	FUNC9(tsk);
	if (!tsk->mm || FUNC0(&tsk->mm->mm_users) > 1 ||
#ifdef CONFIG_AIO
	    !hlist_empty(&tsk->mm->ioctx_list) ||
#endif
	    tsk->mm != tsk->active_mm) {
		FUNC5(mm);
		FUNC10(tsk);
		return -EINVAL;
	}

	/* ok, we are alone. No ptrace, no threads, etc. */
	old_mm = tsk->mm;
	tsk->mm = tsk->active_mm = mm;
	FUNC6();
	FUNC11(mm, tsk);
	FUNC1(FUNC8(), FUNC4(mm));
	FUNC7();
	FUNC10(tsk);
	FUNC5(old_mm);
	return 0;
}