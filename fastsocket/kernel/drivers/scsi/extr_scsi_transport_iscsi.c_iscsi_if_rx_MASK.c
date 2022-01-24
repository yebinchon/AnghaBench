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
typedef  scalar_t__ uint32_t ;
struct sk_buff {scalar_t__ len; } ;
struct nlmsghdr {int nlmsg_len; int /*<<< orphan*/  nlmsg_type; int /*<<< orphan*/  nlmsg_seq; } ;
struct iscsi_uevent {scalar_t__ type; int iferror; } ;

/* Variables and functions */
 int ECONNREFUSED ; 
 int ESRCH ; 
 scalar_t__ ISCSI_KEVENT_IF_ERROR ; 
 scalar_t__ ISCSI_UEVENT_GET_CHAP ; 
 scalar_t__ ISCSI_UEVENT_GET_STATS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 struct iscsi_uevent* FUNC1 (struct nlmsghdr*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*,struct nlmsghdr*,scalar_t__*) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iscsi_uevent*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct nlmsghdr* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  rx_queue_mutex ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static void
FUNC9(struct sk_buff *skb)
{
	FUNC5(&rx_queue_mutex);
	while (skb->len >= FUNC2(0)) {
		int err;
		uint32_t rlen;
		struct nlmsghdr	*nlh;
		struct iscsi_uevent *ev;
		uint32_t group;

		nlh = FUNC7(skb);
		if (nlh->nlmsg_len < sizeof(*nlh) ||
		    skb->len < nlh->nlmsg_len) {
			break;
		}

		ev = FUNC1(nlh);
		rlen = FUNC0(nlh->nlmsg_len);
		if (rlen > skb->len)
			rlen = skb->len;

		err = FUNC3(skb, nlh, &group);
		if (err) {
			ev->type = ISCSI_KEVENT_IF_ERROR;
			ev->iferror = err;
		}
		do {
			/*
			 * special case for GET_STATS:
			 * on success - sending reply and stats from
			 * inside of if_recv_msg(),
			 * on error - fall through.
			 */
			if (ev->type == ISCSI_UEVENT_GET_STATS && !err)
				break;
			if (ev->type == ISCSI_UEVENT_GET_CHAP && !err)
				break;
			err = FUNC4(group, nlh->nlmsg_seq,
				nlh->nlmsg_type, 0, 0, ev, sizeof(*ev));
		} while (err < 0 && err != -ECONNREFUSED && err != -ESRCH);
		FUNC8(skb, rlen);
	}
	FUNC6(&rx_queue_mutex);
}