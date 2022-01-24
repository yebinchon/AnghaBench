#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {scalar_t__ session; } ;
struct TYPE_6__ {TYPE_1__* signal; } ;
struct TYPE_5__ {scalar_t__ tty; scalar_t__ leader; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EPERM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 int /*<<< orphan*/  tty_mutex ; 

__attribute__((used)) static int FUNC8(struct tty_struct *tty, int arg)
{
	int ret = 0;
	if (current->signal->leader && (FUNC7(current) == tty->session))
		return ret;

	FUNC1(&tty_mutex);
	/*
	 * The process must be a session leader and
	 * not have a controlling tty already.
	 */
	if (!current->signal->leader || current->signal->tty) {
		ret = -EPERM;
		goto unlock;
	}

	if (tty->session) {
		/*
		 * This tty is already the controlling
		 * tty for another session group!
		 */
		if (arg == 1 && FUNC0(CAP_SYS_ADMIN)) {
			/*
			 * Steal it away
			 */
			FUNC4(&tasklist_lock);
			FUNC6(tty->session);
			FUNC5(&tasklist_lock);
		} else {
			ret = -EPERM;
			goto unlock;
		}
	}
	FUNC3(current, tty);
unlock:
	FUNC2(&tty_mutex);
	return ret;
}