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
struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct i2400m {scalar_t__ state; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 scalar_t__ I2400M_SS_IDLE ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*,struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct sk_buff*,struct net_device*) ; 
 struct device* FUNC2 (struct i2400m*) ; 
 int FUNC3 (struct i2400m*,struct net_device*,struct sk_buff*) ; 
 int FUNC4 (struct i2400m*,struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct i2400m* FUNC6 (struct net_device*) ; 

__attribute__((used)) static
netdev_tx_t FUNC7(struct sk_buff *skb,
					 struct net_device *net_dev)
{
	struct i2400m *i2400m = FUNC6(net_dev);
	struct device *dev = FUNC2(i2400m);
	int result;

	FUNC1(3, dev, "(skb %p net_dev %p)\n", skb, net_dev);
	if (i2400m->state == I2400M_SS_IDLE)
		result = FUNC4(i2400m, net_dev, skb);
	else
		result = FUNC3(i2400m, net_dev, skb);
	if (result <  0)
		net_dev->stats.tx_dropped++;
	else {
		net_dev->stats.tx_packets++;
		net_dev->stats.tx_bytes += skb->len;
	}
	FUNC5(skb);

	FUNC0(3, dev, "(skb %p net_dev %p)\n", skb, net_dev);
	return NETDEV_TX_OK;
}