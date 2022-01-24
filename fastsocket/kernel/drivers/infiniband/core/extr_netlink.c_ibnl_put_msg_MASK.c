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
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 void* FUNC1 (struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned char*) ; 
 unsigned char* FUNC4 (struct sk_buff*) ; 

void *FUNC5(struct sk_buff *skb, struct nlmsghdr **nlh, int seq,
		   int len, int client, int op)
{
	unsigned char *prev_tail;

	prev_tail = FUNC4(skb);
	*nlh = FUNC2(skb, 0, seq, FUNC0(client, op),
			 len, NLM_F_MULTI);
	if (!*nlh)
		goto out_nlmsg_trim;
	(*nlh)->nlmsg_len = FUNC4(skb) - prev_tail;
	return FUNC1(*nlh);

out_nlmsg_trim:
	FUNC3(skb, prev_tail);
	return NULL;
}