#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ len; } ;
struct net_device {int /*<<< orphan*/  trans_start; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ elp_device ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int elp_debug ; 
 int /*<<< orphan*/  jiffies ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static netdev_tx_t FUNC9(struct sk_buff *skb, struct net_device *dev)
{
	unsigned long flags;
	elp_device *adapter = FUNC1(dev);

	FUNC7(&adapter->lock, flags);
	FUNC0(dev);

	if (elp_debug >= 3)
		FUNC4("%s: request to send packet of length %d\n", dev->name, (int) skb->len);

	FUNC3(dev);

	/*
	 * send the packet at skb->data for skb->len
	 */
	if (!FUNC6(dev, skb)) {
		if (elp_debug >= 2) {
			FUNC4("%s: failed to transmit packet\n", dev->name);
		}
		FUNC8(&adapter->lock, flags);
		return NETDEV_TX_BUSY;
	}
	if (elp_debug >= 3)
		FUNC4("%s: packet of length %d sent\n", dev->name, (int) skb->len);

	/*
	 * start the transmit timeout
	 */
	dev->trans_start = jiffies;

	FUNC5(dev);
	FUNC8(&adapter->lock, flags);
	FUNC2(dev);
	return NETDEV_TX_OK;
}