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
struct veth_lpar_connection {int state; int /*<<< orphan*/  lock; int /*<<< orphan*/  cap_ack_event; int /*<<< orphan*/  remote_lp; } ;

/* Variables and functions */
 int VETH_STATE_GOTCAPACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct veth_lpevent*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct veth_lpar_connection*) ; 

__attribute__((used)) static void FUNC5(struct veth_lpar_connection *cnx,
			      struct veth_lpevent *event)
{
	unsigned long flags;

	FUNC1(&cnx->lock, flags);
	if (cnx->state & VETH_STATE_GOTCAPACK) {
		FUNC3("Received a second capabilities ack from LPAR %d.\n",
			   cnx->remote_lp);
	} else {
		FUNC0(&cnx->cap_ack_event, event,
		       sizeof(cnx->cap_ack_event));
		cnx->state |= VETH_STATE_GOTCAPACK;
		FUNC4(cnx);
	}
	FUNC2(&cnx->lock, flags);
}