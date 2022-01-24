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
struct tty_struct {struct syncppp* disc_data; } ;
struct syncppp {int /*<<< orphan*/  tpkt; int /*<<< orphan*/  rqueue; int /*<<< orphan*/  chan; int /*<<< orphan*/  tsk; int /*<<< orphan*/  dead_cmp; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  disc_data_lock ; 
 int /*<<< orphan*/  FUNC1 (struct syncppp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct tty_struct *tty)
{
	struct syncppp *ap;

	FUNC7(&disc_data_lock);
	ap = tty->disc_data;
	tty->disc_data = NULL;
	FUNC8(&disc_data_lock);
	if (!ap)
		return;

	/*
	 * We have now ensured that nobody can start using ap from now
	 * on, but we have to wait for all existing users to finish.
	 * Note that ppp_unregister_channel ensures that no calls to
	 * our channel ops (i.e. ppp_sync_send/ioctl) are in progress
	 * by the time it returns.
	 */
	if (!FUNC0(&ap->refcnt))
		FUNC6(&ap->dead_cmp);
	FUNC5(&ap->tsk);

	FUNC3(&ap->chan);
	FUNC4(&ap->rqueue);
	FUNC2(ap->tpkt);
	FUNC1(ap);
}