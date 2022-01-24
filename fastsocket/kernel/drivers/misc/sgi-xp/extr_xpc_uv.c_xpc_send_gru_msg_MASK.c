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
struct gru_message_queue_desc {int dummy; } ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;

/* Variables and functions */
 int MQE_CONGESTION ; 
 int MQE_OK ; 
 int MQE_QUEUE_FULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct gru_message_queue_desc*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int xpGruSendMqError ; 
 int xpSuccess ; 
 int /*<<< orphan*/  xpc_chan ; 

__attribute__((used)) static enum xp_retval
FUNC4(struct gru_message_queue_desc *gru_mq_desc, void *msg,
		 size_t msg_size)
{
	enum xp_retval xp_ret;
	int ret;

	while (1) {
		ret = FUNC2(gru_mq_desc, msg, msg_size);
		if (ret == MQE_OK) {
			xp_ret = xpSuccess;
			break;
		}

		if (ret == MQE_QUEUE_FULL) {
			FUNC0(xpc_chan, "gru_send_message_gpa() returned "
				"error=MQE_QUEUE_FULL\n");
			/* !!! handle QLimit reached; delay & try again */
			/* ??? Do we add a limit to the number of retries? */
			(void)FUNC3(10);
		} else if (ret == MQE_CONGESTION) {
			FUNC0(xpc_chan, "gru_send_message_gpa() returned "
				"error=MQE_CONGESTION\n");
			/* !!! handle LB Overflow; simply try again */
			/* ??? Do we add a limit to the number of retries? */
		} else {
			/* !!! Currently this is MQE_UNEXPECTED_CB_ERR */
			FUNC1(xpc_chan, "gru_send_message_gpa() returned "
				"error=%d\n", ret);
			xp_ret = xpGruSendMqError;
			break;
		}
	}
	return xp_ret;
}