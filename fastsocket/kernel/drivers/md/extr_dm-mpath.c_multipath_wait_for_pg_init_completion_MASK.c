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
struct multipath {int /*<<< orphan*/  pg_init_wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  pg_init_in_progress; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC7(struct multipath *m)
{
	FUNC0(wait, current);
	unsigned long flags;

	FUNC1(&m->pg_init_wait, &wait);

	while (1) {
		FUNC4(TASK_UNINTERRUPTIBLE);

		FUNC5(&m->lock, flags);
		if (!m->pg_init_in_progress) {
			FUNC6(&m->lock, flags);
			break;
		}
		FUNC6(&m->lock, flags);

		FUNC2();
	}
	FUNC4(TASK_RUNNING);

	FUNC3(&m->pg_init_wait, &wait);
}