#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  work; } ;
struct tty_struct {int /*<<< orphan*/  ldisc_mutex; TYPE_3__ buf; TYPE_2__* ops; struct tty_ldisc* ldisc; int /*<<< orphan*/  flags; scalar_t__ receive_room; struct tty_struct* link; } ;
struct tty_ldisc {TYPE_1__* ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* set_ldisc ) (struct tty_struct*) ;} ;
struct TYPE_4__ {int num; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct tty_ldisc*) ; 
 int FUNC1 (struct tty_ldisc*) ; 
 int /*<<< orphan*/  TTY_HUPPED ; 
 int /*<<< orphan*/  TTY_LDISC_CHANGING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct tty_struct*,struct tty_ldisc*) ; 
 int /*<<< orphan*/  FUNC11 (struct tty_struct*,struct tty_ldisc*) ; 
 int /*<<< orphan*/  FUNC12 (struct tty_struct*) ; 
 struct tty_ldisc* FUNC13 (int) ; 
 int FUNC14 (struct tty_struct*) ; 
 int FUNC15 (struct tty_struct*,struct tty_ldisc*) ; 
 int /*<<< orphan*/  FUNC16 (struct tty_ldisc*) ; 
 int /*<<< orphan*/  FUNC17 (struct tty_struct*,struct tty_ldisc*) ; 
 int /*<<< orphan*/  tty_ldisc_wait ; 
 int /*<<< orphan*/  FUNC18 (struct tty_struct*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct tty_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 

int FUNC21(struct tty_struct *tty, int ldisc)
{
	int retval;
	struct tty_ldisc *o_ldisc, *new_ldisc;
	int work, o_work = 0;
	struct tty_struct *o_tty;

	new_ldisc = FUNC13(ldisc);
	if (FUNC0(new_ldisc))
		return FUNC1(new_ldisc);

	/*
	 *	We need to look at the tty locking here for pty/tty pairs
	 *	when both sides try to change in parallel.
	 */

	o_tty = tty->link;	/* o_tty is the pty side or NULL */


	/*
	 *	Check the no-op case
	 */

	if (tty->ldisc->ops->num == ldisc) {
		FUNC16(new_ldisc);
		return 0;
	}

	/*
	 *	Problem: What do we do if this blocks ?
	 *	We could deadlock here
	 */

	FUNC19(tty, 0);

	FUNC4(&tty->ldisc_mutex);

	/*
	 *	We could be midstream of another ldisc change which has
	 *	dropped the lock during processing. If so we need to wait.
	 */

	while (FUNC9(TTY_LDISC_CHANGING, &tty->flags)) {
		FUNC5(&tty->ldisc_mutex);
		FUNC20(tty_ldisc_wait,
			FUNC9(TTY_LDISC_CHANGING, &tty->flags) == 0);
		FUNC4(&tty->ldisc_mutex);
	}
	FUNC7(TTY_LDISC_CHANGING, &tty->flags);

	/*
	 *	No more input please, we are switching. The new ldisc
	 *	will update this value in the ldisc open function
	 */

	tty->receive_room = 0;

	o_ldisc = tty->ldisc;
	/*
	 *	Make sure we don't change while someone holds a
	 *	reference to the line discipline. The TTY_LDISC bit
	 *	prevents anyone taking a reference once it is clear.
	 *	We need the lock to avoid racing reference takers.
	 *
	 *	We must clear the TTY_LDISC bit here to avoid a livelock
	 *	with a userspace app continually trying to use the tty in
	 *	parallel to the change and re-referencing the tty.
	 */

	work = FUNC14(tty);
	if (o_tty)
		o_work = FUNC14(o_tty);

	/*
	 * Wait for ->hangup_work and ->buf.work handlers to terminate.
	 * We must drop the mutex here in case a hangup is also in process.
	 */

	FUNC5(&tty->ldisc_mutex);

	FUNC3();

	FUNC4(&tty->ldisc_mutex);
	if (FUNC9(TTY_HUPPED, &tty->flags)) {
		/* We were raced by the hangup method. It will have stomped
		   the ldisc data and closed the ldisc down */
		FUNC2(TTY_LDISC_CHANGING, &tty->flags);
		FUNC5(&tty->ldisc_mutex);
		FUNC16(new_ldisc);
		return -EIO;
	}

	/* Shutdown the current discipline. */
	FUNC11(tty, o_ldisc);

	/* Now set up the new line discipline. */
	FUNC10(tty, new_ldisc);
	FUNC18(tty, ldisc);

	retval = FUNC15(tty, new_ldisc);
	if (retval < 0) {
		/* Back to the old one or N_TTY if we can't */
		FUNC16(new_ldisc);
		FUNC17(tty, o_ldisc);
	}

	/* At this point we hold a reference to the new ldisc and a
	   a reference to the old ldisc. If we ended up flipping back
	   to the existing ldisc we have two references to it */

	if (tty->ldisc->ops->num != o_ldisc->ops->num && tty->ops->set_ldisc)
		tty->ops->set_ldisc(tty);

	FUNC16(o_ldisc);

	/*
	 *	Allow ldisc referencing to occur again
	 */

	FUNC12(tty);
	if (o_tty)
		FUNC12(o_tty);

	/* Restart the work queue in case no characters kick it off. Safe if
	   already running */
	if (work)
		FUNC6(&tty->buf.work, 1);
	if (o_work)
		FUNC6(&o_tty->buf.work, 1);
	FUNC5(&tty->ldisc_mutex);
	return retval;
}