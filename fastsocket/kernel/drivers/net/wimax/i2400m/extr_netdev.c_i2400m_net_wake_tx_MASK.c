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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
struct i2400m {int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  wake_tx_ws; int /*<<< orphan*/  wake_tx_skb; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct sk_buff*,struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct device*,char*,struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct device*,char*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct device* FUNC5 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
int FUNC16(struct i2400m *i2400m, struct net_device *net_dev,
		       struct sk_buff *skb)
{
	int result;
	struct device *dev = FUNC5(i2400m);
	unsigned long flags;

	FUNC3(3, dev, "(skb %p net_dev %p)\n", skb, net_dev);
	if (FUNC8()) {
		FUNC4(3, dev, "WAKE&NETTX: "
			 "skb %p sending %d bytes to radio\n",
			 skb, skb->len);
		FUNC1(4, dev, skb->data, skb->len);
	}
	/* We hold a ref count for i2400m and skb, so when
	 * stopping() the device, we need to cancel that work
	 * and if pending, release those resources. */
	result = 0;
	FUNC13(&i2400m->tx_lock, flags);
	if (!FUNC15(&i2400m->wake_tx_ws)) {
		FUNC10(net_dev);
		FUNC6(i2400m);
		i2400m->wake_tx_skb = FUNC12(skb);	/* transfer ref count */
		FUNC7(skb);
		result = FUNC11(&i2400m->wake_tx_ws);
		FUNC0(result == 0);
	}
	FUNC14(&i2400m->tx_lock, flags);
	if (result == 0) {
		/* Yes, this happens even if we stopped the
		 * queue -- blame the queue disciplines that
		 * queue without looking -- I guess there is a reason
		 * for that. */
		if (FUNC8())
			FUNC4(1, dev, "NETTX: device exiting idle, "
				 "dropping skb %p, queue running %d\n",
				 skb, FUNC9(net_dev));
		result = -EBUSY;
	}
	FUNC2(3, dev, "(skb %p net_dev %p) = %d\n", skb, net_dev, result);
	return result;
}