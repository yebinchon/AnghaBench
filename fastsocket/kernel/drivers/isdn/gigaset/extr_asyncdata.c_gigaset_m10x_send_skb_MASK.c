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
struct sk_buff {unsigned int len; } ;
struct bc_state {scalar_t__ proto2; TYPE_1__* cs; int /*<<< orphan*/  squeue; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  write_tasklet; scalar_t__ connected; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct sk_buff* FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HW_HDR_LEN ; 
 scalar_t__ ISDN_PROTO_L2_HDLC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct sk_buff* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct bc_state *bcs, struct sk_buff *skb)
{
	unsigned len = skb->len;
	unsigned long flags;

	if (bcs->proto2 == ISDN_PROTO_L2_HDLC)
		skb = FUNC0(skb, HW_HDR_LEN, 0);
	else
		skb = FUNC2(skb, HW_HDR_LEN, 0);
	if (!skb) {
		FUNC1(bcs->cs->dev,
			"unable to allocate memory for encoding!\n");
		return -ENOMEM;
	}

	FUNC3(&bcs->squeue, skb);
	FUNC4(&bcs->cs->lock, flags);
	if (bcs->cs->connected)
		FUNC6(&bcs->cs->write_tasklet);
	FUNC5(&bcs->cs->lock, flags);

	return len;	/* ok so far */
}