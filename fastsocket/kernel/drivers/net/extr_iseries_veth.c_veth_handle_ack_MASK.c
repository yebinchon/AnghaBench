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
struct TYPE_2__ {size_t xTargetLp; int xSubtype; } ;
struct veth_lpevent {TYPE_1__ base_event; } ;
struct veth_lpar_connection {int dummy; } ;
typedef  size_t HvLpIndex ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  VETH_EVENT_CAP 129 
#define  VETH_EVENT_MONITOR 128 
 struct veth_lpar_connection** veth_cnx ; 
 int /*<<< orphan*/  FUNC1 (char*,int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct veth_lpar_connection*,struct veth_lpevent*) ; 
 int /*<<< orphan*/  FUNC3 (struct veth_lpar_connection*,struct veth_lpevent*) ; 

__attribute__((used)) static void FUNC4(struct veth_lpevent *event)
{
	HvLpIndex rlp = event->base_event.xTargetLp;
	struct veth_lpar_connection *cnx = veth_cnx[rlp];

	FUNC0(! cnx);

	switch (event->base_event.xSubtype) {
	case VETH_EVENT_CAP:
		FUNC2(cnx, event);
		break;
	case VETH_EVENT_MONITOR:
		FUNC3(cnx, event);
		break;
	default:
		FUNC1("Unknown ack type %d from LPAR %d.\n",
				event->base_event.xSubtype, rlp);
	};
}