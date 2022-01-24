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
struct sk_buff {int len; } ;
struct nlmsghdr {int nlmsg_len; } ;
struct cn_msg {int dummy; } ;

/* Variables and functions */
 int CONNECTOR_MAX_MSG_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct nlmsghdr* FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC5(struct sk_buff *__skb)
{
	struct nlmsghdr *nlh;
	int err;
	struct sk_buff *skb;

	skb = FUNC4(__skb);

	if (skb->len >= FUNC0(0)) {
		nlh = FUNC3(skb);

		if (nlh->nlmsg_len < sizeof(struct cn_msg) ||
		    skb->len < nlh->nlmsg_len ||
		    nlh->nlmsg_len > CONNECTOR_MAX_MSG_SIZE) {
			FUNC2(skb);
			return;
		}

		err = FUNC1(skb);
		if (err < 0)
			FUNC2(skb);
	}
}