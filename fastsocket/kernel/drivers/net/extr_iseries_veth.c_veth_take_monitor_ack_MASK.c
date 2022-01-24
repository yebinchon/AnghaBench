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
struct veth_lpevent {int dummy; } ;
struct veth_lpar_connection {int state; int /*<<< orphan*/  lock; int /*<<< orphan*/  remote_lp; } ;

/* Variables and functions */
 int VETH_STATE_RESET ; 
 int VETH_STATE_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct veth_lpar_connection*) ; 

__attribute__((used)) static void FUNC4(struct veth_lpar_connection *cnx,
				  struct veth_lpevent *event)
{
	unsigned long flags;

	FUNC0(&cnx->lock, flags);
	FUNC2("cnx %d: lost connection.\n", cnx->remote_lp);

	/* Avoid kicking the statemachine once we're shutdown.
	 * It's unnecessary and it could break veth_stop_connection(). */

	if (! (cnx->state & VETH_STATE_SHUTDOWN)) {
		cnx->state |= VETH_STATE_RESET;
		FUNC3(cnx);
	}
	FUNC1(&cnx->lock, flags);
}