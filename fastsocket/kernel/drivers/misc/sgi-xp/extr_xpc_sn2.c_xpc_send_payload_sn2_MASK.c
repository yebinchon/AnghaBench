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
typedef  int /*<<< orphan*/ * xpc_notify_func ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct xpc_notify_sn2 {int /*<<< orphan*/  type; void* key; int /*<<< orphan*/ * func; } ;
struct xpc_msg_sn2 {size_t number; int /*<<< orphan*/  flags; int /*<<< orphan*/  payload; } ;
struct xpc_channel_sn2 {TYPE_2__* local_GP; struct xpc_notify_sn2* notify_queue; } ;
struct TYPE_3__ {struct xpc_channel_sn2 sn2; } ;
struct xpc_channel {scalar_t__ entry_size; int flags; int reason; size_t local_nentries; int /*<<< orphan*/  n_to_notify; TYPE_1__ sn; } ;
typedef  size_t s64 ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;
struct TYPE_4__ {size_t put; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XPC_C_CONNECTED ; 
 int XPC_C_DISCONNECTING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XPC_M_SN2_INTERRUPT ; 
 int /*<<< orphan*/  XPC_M_SN2_READY ; 
 int /*<<< orphan*/  XPC_N_CALL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 struct xpc_msg_sn2* msg ; 
 struct xpc_notify_sn2* notify ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int xpNotConnected ; 
 int xpPayloadTooBig ; 
 int xpSuccess ; 
 int FUNC7 (struct xpc_channel*,int /*<<< orphan*/ ,struct xpc_msg_sn2**) ; 
 int /*<<< orphan*/  FUNC8 (struct xpc_channel*) ; 
 int /*<<< orphan*/  FUNC9 (struct xpc_channel*) ; 
 int /*<<< orphan*/  FUNC10 (struct xpc_channel*,size_t) ; 

__attribute__((used)) static enum xp_retval
FUNC11(struct xpc_channel *ch, u32 flags, void *payload,
		     u16 payload_size, u8 notify_type, xpc_notify_func func,
		     void *key)
{
	enum xp_retval ret = xpSuccess;
	struct xpc_channel_sn2 *ch_sn2 = &ch->sn.sn2;
	struct xpc_msg_sn2 *msg = msg;
	struct xpc_notify_sn2 *notify = notify;
	s64 msg_number;
	s64 put;

	FUNC0(notify_type == XPC_N_CALL && func == NULL);

	if (FUNC1(payload_size) > ch->entry_size)
		return xpPayloadTooBig;

	FUNC9(ch);

	if (ch->flags & XPC_C_DISCONNECTING) {
		ret = ch->reason;
		goto out_1;
	}
	if (!(ch->flags & XPC_C_CONNECTED)) {
		ret = xpNotConnected;
		goto out_1;
	}

	ret = FUNC7(ch, flags, &msg);
	if (ret != xpSuccess)
		goto out_1;

	msg_number = msg->number;

	if (notify_type != 0) {
		/*
		 * Tell the remote side to send an ACK interrupt when the
		 * message has been delivered.
		 */
		msg->flags |= XPC_M_SN2_INTERRUPT;

		FUNC3(&ch->n_to_notify);

		notify = &ch_sn2->notify_queue[msg_number % ch->local_nentries];
		notify->func = func;
		notify->key = key;
		notify->type = notify_type;

		/* ??? Is a mb() needed here? */

		if (ch->flags & XPC_C_DISCONNECTING) {
			/*
			 * An error occurred between our last error check and
			 * this one. We will try to clear the type field from
			 * the notify entry. If we succeed then
			 * xpc_disconnect_channel() didn't already process
			 * the notify entry.
			 */
			if (FUNC4(&notify->type, notify_type, 0) ==
			    notify_type) {
				FUNC2(&ch->n_to_notify);
				ret = ch->reason;
			}
			goto out_1;
		}
	}

	FUNC5(&msg->payload, payload, payload_size);

	msg->flags |= XPC_M_SN2_READY;

	/*
	 * The preceding store of msg->flags must occur before the following
	 * load of local_GP->put.
	 */
	FUNC6();

	/* see if the message is next in line to be sent, if so send it */

	put = ch_sn2->local_GP->put;
	if (put == msg_number)
		FUNC10(ch, put);

out_1:
	FUNC8(ch);
	return ret;
}