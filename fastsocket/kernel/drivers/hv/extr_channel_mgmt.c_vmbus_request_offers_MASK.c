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
struct vmbus_channel_msginfo {int /*<<< orphan*/  waitevent; scalar_t__ msg; } ;
struct vmbus_channel_message_header {int /*<<< orphan*/  msgtype; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNELMSG_REQUESTOFFERS ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vmbus_channel_msginfo*) ; 
 struct vmbus_channel_msginfo* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (struct vmbus_channel_message_header*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 

int FUNC6(void)
{
	struct vmbus_channel_message_header *msg;
	struct vmbus_channel_msginfo *msginfo;
	int ret, t;

	msginfo = FUNC2(sizeof(*msginfo) +
			  sizeof(struct vmbus_channel_message_header),
			  GFP_KERNEL);
	if (!msginfo)
		return -ENOMEM;

	FUNC0(&msginfo->waitevent);

	msg = (struct vmbus_channel_message_header *)msginfo->msg;

	msg->msgtype = CHANNELMSG_REQUESTOFFERS;


	ret = FUNC4(msg,
			       sizeof(struct vmbus_channel_message_header));
	if (ret != 0) {
		FUNC3("Unable to request offers - %d\n", ret);

		goto cleanup;
	}

	t = FUNC5(&msginfo->waitevent, 5*HZ);
	if (t == 0) {
		ret = -ETIMEDOUT;
		goto cleanup;
	}



cleanup:
	FUNC1(msginfo);

	return ret;
}