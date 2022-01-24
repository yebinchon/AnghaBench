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
struct tty_struct {struct sixpack* disc_data; } ;
struct sixpack {int /*<<< orphan*/  xbuff; int /*<<< orphan*/  rbuff; int /*<<< orphan*/  resync_t; int /*<<< orphan*/  tx_t; int /*<<< orphan*/  dev; int /*<<< orphan*/  dead_sem; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  disc_data_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct tty_struct *tty)
{
	struct sixpack *sp;

	FUNC5(&disc_data_lock);
	sp = tty->disc_data;
	tty->disc_data = NULL;
	FUNC6(&disc_data_lock);
	if (!sp)
		return;

	/*
	 * We have now ensured that nobody can start using ap from now on, but
	 * we have to wait for all existing users to finish.
	 */
	if (!FUNC0(&sp->refcnt))
		FUNC2(&sp->dead_sem);

	FUNC4(sp->dev);

	FUNC1(&sp->tx_t);
	FUNC1(&sp->resync_t);

	/* Free all 6pack frame buffers. */
	FUNC3(sp->rbuff);
	FUNC3(sp->xbuff);
}