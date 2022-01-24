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
struct wimax_dev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct i2400m {int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  msg_completion; struct sk_buff* ack_skb; struct wimax_dev wimax_dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct device* FUNC4 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct sk_buff* FUNC8 (struct wimax_dev*,int /*<<< orphan*/ *,void const*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC9(struct i2400m *i2400m,
		       const void *payload, size_t size)
{
	struct device *dev = FUNC4(i2400m);
	struct wimax_dev *wimax_dev = &i2400m->wimax_dev;
	unsigned long flags;
	struct sk_buff *ack_skb;

	/* Anyone waiting for an answer? */
	FUNC6(&i2400m->rx_lock, flags);
	if (i2400m->ack_skb != FUNC0(-EINPROGRESS)) {
		FUNC3(dev, "Huh? reply to command with no waiters\n");
		goto error_no_waiter;
	}
	FUNC7(&i2400m->rx_lock, flags);

	ack_skb = FUNC8(wimax_dev, NULL, payload, size, GFP_KERNEL);

	/* Check waiter didn't time out waiting for the answer... */
	FUNC6(&i2400m->rx_lock, flags);
	if (i2400m->ack_skb != FUNC0(-EINPROGRESS)) {
		FUNC2(1, dev, "Huh? waiter for command reply cancelled\n");
		goto error_waiter_cancelled;
	}
	if (ack_skb == NULL) {
		FUNC3(dev, "CMD/GET/SET ack: cannot allocate SKB\n");
		i2400m->ack_skb = FUNC0(-ENOMEM);
	} else
		i2400m->ack_skb = ack_skb;
	FUNC7(&i2400m->rx_lock, flags);
	FUNC1(&i2400m->msg_completion);
	return;

error_waiter_cancelled:
	FUNC5(ack_skb);
error_no_waiter:
	FUNC7(&i2400m->rx_lock, flags);
	return;
}