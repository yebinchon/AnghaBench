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
struct netlink_skb_parms {int dummy; } ;
struct cn_msg {int len; int /*<<< orphan*/  ack; int /*<<< orphan*/  seq; scalar_t__ data; } ;
typedef  enum proc_cn_mcast_op { ____Placeholder_proc_cn_mcast_op } proc_cn_mcast_op ;

/* Variables and functions */
 int EINVAL ; 
#define  PROC_CN_MCAST_IGNORE 129 
#define  PROC_CN_MCAST_LISTEN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proc_event_num_listeners ; 

__attribute__((used)) static void FUNC3(struct cn_msg *msg,
			      struct netlink_skb_parms *nsp)
{
	enum proc_cn_mcast_op *mc_op = NULL;
	int err = 0;

	if (msg->len != sizeof(*mc_op))
		return;

	mc_op = (enum proc_cn_mcast_op*)msg->data;
	switch (*mc_op) {
	case PROC_CN_MCAST_LISTEN:
		FUNC1(&proc_event_num_listeners);
		break;
	case PROC_CN_MCAST_IGNORE:
		FUNC0(&proc_event_num_listeners);
		break;
	default:
		err = EINVAL;
		break;
	}
	FUNC2(err, msg->seq, msg->ack);
}