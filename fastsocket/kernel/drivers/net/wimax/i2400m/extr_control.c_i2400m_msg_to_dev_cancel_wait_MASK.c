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
struct i2400m {int /*<<< orphan*/  rx_lock; struct sk_buff* ack_skb; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct i2400m *i2400m, int code)
{
	struct sk_buff *ack_skb;
	unsigned long flags;

	FUNC3(&i2400m->rx_lock, flags);
	ack_skb = i2400m->ack_skb;
	if (ack_skb && !FUNC1(ack_skb))
		FUNC2(ack_skb);
	i2400m->ack_skb = FUNC0(code);
	FUNC4(&i2400m->rx_lock, flags);
}