#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__ act_state_req; int /*<<< orphan*/  reason; } ;
struct TYPE_4__ {TYPE_1__ uv; } ;
struct xpc_partition {scalar_t__ act_state; TYPE_2__ sn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct xpc_partition*,int /*<<< orphan*/ ) ; 
 scalar_t__ XPC_P_ASR_ACTIVATE_UV ; 
 scalar_t__ XPC_P_ASR_DEACTIVATE_UV ; 
 scalar_t__ XPC_P_ASR_REACTIVATE_UV ; 
 scalar_t__ XPC_P_AS_DEACTIVATING ; 
 scalar_t__ XPC_P_AS_INACTIVE ; 
 short XP_MAX_NPARTITIONS_UV ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  xpReactivating ; 
 scalar_t__ xpc_activate_IRQ_rcvd ; 
 int /*<<< orphan*/  xpc_activate_IRQ_rcvd_lock ; 
 int /*<<< orphan*/  FUNC6 (struct xpc_partition*) ; 
 struct xpc_partition* xpc_partitions ; 

__attribute__((used)) static void
FUNC7(void)
{
	unsigned long irq_flags;
	short partid;
	struct xpc_partition *part;
	u8 act_state_req;

	FUNC2(xpc_activate_IRQ_rcvd == 0);

	FUNC4(&xpc_activate_IRQ_rcvd_lock, irq_flags);
	for (partid = 0; partid < XP_MAX_NPARTITIONS_UV; partid++) {
		part = &xpc_partitions[partid];

		if (part->sn.uv.act_state_req == 0)
			continue;

		xpc_activate_IRQ_rcvd--;
		FUNC1(xpc_activate_IRQ_rcvd < 0);

		act_state_req = part->sn.uv.act_state_req;
		part->sn.uv.act_state_req = 0;
		FUNC5(&xpc_activate_IRQ_rcvd_lock, irq_flags);

		if (act_state_req == XPC_P_ASR_ACTIVATE_UV) {
			if (part->act_state == XPC_P_AS_INACTIVE)
				FUNC6(part);
			else if (part->act_state == XPC_P_AS_DEACTIVATING)
				FUNC3(part, xpReactivating);

		} else if (act_state_req == XPC_P_ASR_REACTIVATE_UV) {
			if (part->act_state == XPC_P_AS_INACTIVE)
				FUNC6(part);
			else
				FUNC3(part, xpReactivating);

		} else if (act_state_req == XPC_P_ASR_DEACTIVATE_UV) {
			FUNC3(part, part->sn.uv.reason);

		} else {
			FUNC0();
		}

		FUNC4(&xpc_activate_IRQ_rcvd_lock, irq_flags);
		if (xpc_activate_IRQ_rcvd == 0)
			break;
	}
	FUNC5(&xpc_activate_IRQ_rcvd_lock, irq_flags);

}