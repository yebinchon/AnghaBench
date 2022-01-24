#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct vmbus_channel_msginfo {int /*<<< orphan*/  msglistentry; int /*<<< orphan*/  waitevent; scalar_t__ msg; } ;
struct TYPE_4__ {int /*<<< orphan*/  msgtype; } ;
struct vmbus_channel_gpadl_teardown {int /*<<< orphan*/  gpadl; int /*<<< orphan*/  child_relid; TYPE_1__ header; } ;
struct TYPE_5__ {int /*<<< orphan*/  child_relid; } ;
struct vmbus_channel {TYPE_2__ offermsg; } ;
struct TYPE_6__ {int /*<<< orphan*/  channelmsg_lock; int /*<<< orphan*/  chn_msg_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CHANNELMSG_GPADL_TEARDOWN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vmbus_channel_msginfo*) ; 
 struct vmbus_channel_msginfo* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_3__ vmbus_connection ; 
 int FUNC8 (struct vmbus_channel_gpadl_teardown*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 

int FUNC10(struct vmbus_channel *channel, u32 gpadl_handle)
{
	struct vmbus_channel_gpadl_teardown *msg;
	struct vmbus_channel_msginfo *info;
	unsigned long flags;
	int ret, t;

	info = FUNC3(sizeof(*info) +
		       sizeof(struct vmbus_channel_gpadl_teardown), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	FUNC1(&info->waitevent);

	msg = (struct vmbus_channel_gpadl_teardown *)info->msg;

	msg->header.msgtype = CHANNELMSG_GPADL_TEARDOWN;
	msg->child_relid = channel->offermsg.child_relid;
	msg->gpadl = gpadl_handle;

	FUNC6(&vmbus_connection.channelmsg_lock, flags);
	FUNC4(&info->msglistentry,
		      &vmbus_connection.chn_msg_list);
	FUNC7(&vmbus_connection.channelmsg_lock, flags);
	ret = FUNC8(msg,
			       sizeof(struct vmbus_channel_gpadl_teardown));

	FUNC0(ret != 0);
	t = FUNC9(&info->waitevent, 5*HZ);
	FUNC0(t == 0);

	/* Received a torndown response */
	FUNC6(&vmbus_connection.channelmsg_lock, flags);
	FUNC5(&info->msglistentry);
	FUNC7(&vmbus_connection.channelmsg_lock, flags);

	FUNC2(info);
	return ret;
}