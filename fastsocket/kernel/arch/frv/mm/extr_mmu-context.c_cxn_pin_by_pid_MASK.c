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
struct task_struct {struct mm_struct* mm; } ;
struct mm_struct {int /*<<< orphan*/  context; int /*<<< orphan*/  mm_users; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int EINVAL ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cxn_owners_lock ; 
 int cxn_pinned ; 
 struct task_struct* FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*) ; 
 int /*<<< orphan*/  tasklist_lock ; 

int FUNC10(pid_t pid)
{
	struct task_struct *tsk;
	struct mm_struct *mm = NULL;
	int ret;

	/* unpin if pid is zero */
	if (pid == 0) {
		cxn_pinned = -1;
		return 0;
	}

	ret = -ESRCH;

	/* get a handle on the mm_struct */
	FUNC4(&tasklist_lock);
	tsk = FUNC1(pid);
	if (tsk) {
		ret = -EINVAL;

		FUNC8(tsk);
		if (tsk->mm) {
			mm = tsk->mm;
			FUNC0(&mm->mm_users);
			ret = 0;
		}
		FUNC9(tsk);
	}
	FUNC5(&tasklist_lock);

	if (ret < 0)
		return ret;

	/* make sure it has a CXN and pin it */
	FUNC6(&cxn_owners_lock);
	cxn_pinned = FUNC2(&mm->context);
	FUNC7(&cxn_owners_lock);

	FUNC3(mm);
	return 0;
}