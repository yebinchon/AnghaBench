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
struct veth_lpar_connection {scalar_t__ outstanding_tx; unsigned long last_contact; unsigned long reset_timeout; int /*<<< orphan*/  lock; int /*<<< orphan*/  reset_timer; int /*<<< orphan*/  remote_lp; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  VETH_STATE_RESET ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct veth_lpar_connection*) ; 

__attribute__((used)) static void FUNC5(unsigned long ptr)
{
	struct veth_lpar_connection *cnx = (struct veth_lpar_connection *)ptr;
	unsigned long trigger_time, flags;

	/* FIXME is it possible this fires after veth_stop_connection()?
	 * That would reschedule the statemachine for 5 seconds and probably
	 * execute it after the module's been unloaded. Hmm. */

	FUNC1(&cnx->lock, flags);

	if (cnx->outstanding_tx > 0) {
		trigger_time = cnx->last_contact + cnx->reset_timeout;

		if (trigger_time < jiffies) {
			cnx->state |= VETH_STATE_RESET;
			FUNC4(cnx);
			FUNC3("%d packets not acked by LPAR %d within %d "
					"seconds, resetting.\n",
					cnx->outstanding_tx, cnx->remote_lp,
					cnx->reset_timeout / HZ);
		} else {
			/* Reschedule the timer */
			trigger_time = jiffies + cnx->reset_timeout;
			FUNC0(&cnx->reset_timer, trigger_time);
		}
	}

	FUNC2(&cnx->lock, flags);
}