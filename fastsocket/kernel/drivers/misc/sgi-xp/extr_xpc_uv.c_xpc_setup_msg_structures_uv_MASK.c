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
struct xpc_channel_uv {int /*<<< orphan*/  msg_slot_free_list; int /*<<< orphan*/  send_msg_slots; int /*<<< orphan*/ * cached_notify_gru_mq_desc; } ;
struct TYPE_2__ {struct xpc_channel_uv uv; } ;
struct xpc_channel {int flags; TYPE_1__ sn; } ;
struct gru_message_queue_desc {int dummy; } ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int XPC_C_SETUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int xpNoMemory ; 
 int xpSuccess ; 
 int FUNC3 (struct xpc_channel*) ; 
 int FUNC4 (struct xpc_channel*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum xp_retval
FUNC6(struct xpc_channel *ch)
{
	static enum xp_retval ret;
	struct xpc_channel_uv *ch_uv = &ch->sn.uv;

	FUNC0(ch->flags & XPC_C_SETUP);

	ch_uv->cached_notify_gru_mq_desc = FUNC2(sizeof(struct
						   gru_message_queue_desc),
						   GFP_KERNEL);
	if (ch_uv->cached_notify_gru_mq_desc == NULL)
		return xpNoMemory;

	ret = FUNC4(ch);
	if (ret == xpSuccess) {

		ret = FUNC3(ch);
		if (ret != xpSuccess) {
			FUNC1(ch_uv->send_msg_slots);
			FUNC5(&ch_uv->msg_slot_free_list);
		}
	}
	return ret;
}