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
struct TYPE_3__ {scalar_t__ remote_act_state; } ;
struct TYPE_4__ {TYPE_1__ uv; } ;
struct xpc_partition {scalar_t__ act_state; int reason; TYPE_2__ sn; } ;
struct xpc_activate_mq_msg_uv {int dummy; } ;
typedef  int /*<<< orphan*/  msg ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;

/* Variables and functions */
 int /*<<< orphan*/  XPC_ACTIVATE_MQ_MSG_SYNC_ACT_STATE_UV ; 
 int /*<<< orphan*/  FUNC0 (struct xpc_partition*) ; 
 scalar_t__ XPC_P_AS_ACTIVATING ; 
 scalar_t__ XPC_P_AS_ACTIVE ; 
 scalar_t__ XPC_P_AS_DEACTIVATING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int xpSuccess ; 
 int /*<<< orphan*/  xpc_part ; 
 int /*<<< orphan*/  FUNC3 (struct xpc_partition*,struct xpc_activate_mq_msg_uv*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum xp_retval
FUNC4(struct xpc_partition *part)
{
	struct xpc_activate_mq_msg_uv msg;

	/*
	 * We send a sync msg to get the remote partition's remote_act_state
	 * updated to our current act_state which at this point should
	 * be XPC_P_AS_ACTIVATING.
	 */
	FUNC3(part, &msg, sizeof(msg),
				      XPC_ACTIVATE_MQ_MSG_SYNC_ACT_STATE_UV);

	while (!((part->sn.uv.remote_act_state == XPC_P_AS_ACTIVATING) ||
		 (part->sn.uv.remote_act_state == XPC_P_AS_ACTIVE))) {

		FUNC1(xpc_part, "waiting to make first contact with "
			"partition %d\n", FUNC0(part));

		/* wait a 1/4 of a second or so */
		(void)FUNC2(250);

		if (part->act_state == XPC_P_AS_DEACTIVATING)
			return part->reason;
	}

	return xpSuccess;
}