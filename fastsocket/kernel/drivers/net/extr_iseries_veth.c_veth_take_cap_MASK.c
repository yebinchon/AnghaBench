#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  xRc; } ;
struct veth_lpevent {TYPE_1__ base_event; } ;
struct veth_lpar_connection {int state; int /*<<< orphan*/  lock; int /*<<< orphan*/  cap_event; int /*<<< orphan*/  remote_lp; int /*<<< orphan*/  dst_inst; } ;
struct HvLpEvent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct HvLpEvent*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HvLpEvent_Rc_BufferNotAvailable ; 
 int /*<<< orphan*/  HvLpEvent_Type_VirtualLan ; 
 int VETH_STATE_GOTCAPS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct veth_lpevent*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct veth_lpar_connection*) ; 

__attribute__((used)) static void FUNC7(struct veth_lpar_connection *cnx,
			  struct veth_lpevent *event)
{
	unsigned long flags;

	FUNC3(&cnx->lock, flags);
	/* Receiving caps may mean the other end has just come up, so
	 * we need to reload the instance ID of the far end */
	cnx->dst_inst =
		FUNC1(cnx->remote_lp,
						  HvLpEvent_Type_VirtualLan);

	if (cnx->state & VETH_STATE_GOTCAPS) {
		FUNC5("Received a second capabilities from LPAR %d.\n",
			   cnx->remote_lp);
		event->base_event.xRc = HvLpEvent_Rc_BufferNotAvailable;
		FUNC0((struct HvLpEvent *) event);
	} else {
		FUNC2(&cnx->cap_event, event, sizeof(cnx->cap_event));
		cnx->state |= VETH_STATE_GOTCAPS;
		FUNC6(cnx);
	}
	FUNC4(&cnx->lock, flags);
}