#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct seq_table {scalar_t__ timeout; scalar_t__ retries_left; struct ipmi_recv_msg* recv_msg; int /*<<< orphan*/  seqid; scalar_t__ broadcast; scalar_t__ inuse; } ;
struct list_head {int dummy; } ;
struct ipmi_smi_msg {int dummy; } ;
struct ipmi_smi_handlers {int /*<<< orphan*/  (* sender ) (int /*<<< orphan*/ ,struct ipmi_smi_msg*,int /*<<< orphan*/ ) ;} ;
struct ipmi_recv_msg {int /*<<< orphan*/  addr; int /*<<< orphan*/  link; } ;
typedef  TYPE_1__* ipmi_smi_t ;
struct TYPE_5__ {int intf_num; int /*<<< orphan*/  seq_lock; int /*<<< orphan*/  send_info; struct ipmi_smi_handlers* handlers; } ;

/* Variables and functions */
 scalar_t__ MAX_MSG_TIMEOUT ; 
 int /*<<< orphan*/  dropped_rexmit_ipmb_commands ; 
 int /*<<< orphan*/  dropped_rexmit_lan_commands ; 
 int /*<<< orphan*/  FUNC0 (struct ipmi_smi_msg*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  retransmitted_ipmb_commands ; 
 int /*<<< orphan*/  retransmitted_lan_commands ; 
 struct ipmi_smi_msg* FUNC4 (TYPE_1__*,struct ipmi_recv_msg*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct ipmi_smi_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timed_out_ipmb_broadcasts ; 
 int /*<<< orphan*/  timed_out_ipmb_commands ; 
 int /*<<< orphan*/  timed_out_lan_commands ; 

__attribute__((used)) static void FUNC8(ipmi_smi_t intf, struct seq_table *ent,
			      struct list_head *timeouts, long timeout_period,
			      int slot, unsigned long *flags)
{
	struct ipmi_recv_msg     *msg;
	struct ipmi_smi_handlers *handlers;

	if (intf->intf_num == -1)
		return;

	if (!ent->inuse)
		return;

	ent->timeout -= timeout_period;
	if (ent->timeout > 0)
		return;

	if (ent->retries_left == 0) {
		/* The message has used all its retries. */
		ent->inuse = 0;
		msg = ent->recv_msg;
		FUNC3(&msg->link, timeouts);
		if (ent->broadcast)
			FUNC1(intf, timed_out_ipmb_broadcasts);
		else if (FUNC2(&ent->recv_msg->addr))
			FUNC1(intf, timed_out_lan_commands);
		else
			FUNC1(intf, timed_out_ipmb_commands);
	} else {
		struct ipmi_smi_msg *smi_msg;
		/* More retries, send again. */

		/*
		 * Start with the max timer, set to normal timer after
		 * the message is sent.
		 */
		ent->timeout = MAX_MSG_TIMEOUT;
		ent->retries_left--;
		smi_msg = FUNC4(intf, ent->recv_msg, slot,
					    ent->seqid);
		if (!smi_msg) {
			if (FUNC2(&ent->recv_msg->addr))
				FUNC1(intf,
					      dropped_rexmit_lan_commands);
			else
				FUNC1(intf,
					      dropped_rexmit_ipmb_commands);
			return;
		}

		FUNC6(&intf->seq_lock, *flags);

		/*
		 * Send the new message.  We send with a zero
		 * priority.  It timed out, I doubt time is that
		 * critical now, and high priority messages are really
		 * only for messages to the local MC, which don't get
		 * resent.
		 */
		handlers = intf->handlers;
		if (handlers) {
			if (FUNC2(&ent->recv_msg->addr))
				FUNC1(intf,
					      retransmitted_lan_commands);
			else
				FUNC1(intf,
					      retransmitted_ipmb_commands);

			intf->handlers->sender(intf->send_info,
					       smi_msg, 0);
		} else
			FUNC0(smi_msg);

		FUNC5(&intf->seq_lock, *flags);
	}
}