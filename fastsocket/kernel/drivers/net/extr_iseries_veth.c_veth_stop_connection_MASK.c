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
struct veth_lpar_connection {int state; int /*<<< orphan*/  lock; int /*<<< orphan*/  statemachine_wq; } ;

/* Variables and functions */
 int VETH_STATE_RESET ; 
 int VETH_STATE_SHUTDOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct veth_lpar_connection*) ; 

__attribute__((used)) static void FUNC5(struct veth_lpar_connection *cnx)
{
	if (!cnx)
		return;

	FUNC2(&cnx->lock);
	cnx->state |= VETH_STATE_RESET | VETH_STATE_SHUTDOWN;
	FUNC4(cnx);
	FUNC3(&cnx->lock);

	/* There's a slim chance the reset code has just queued the
	 * statemachine to run in five seconds. If so we need to cancel
	 * that and requeue the work to run now. */
	if (FUNC0(&cnx->statemachine_wq)) {
		FUNC2(&cnx->lock);
		FUNC4(cnx);
		FUNC3(&cnx->lock);
	}

	/* Wait for the state machine to run. */
	FUNC1();
}