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
struct net_device {int dummy; } ;
struct igb_adapter {int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  __IGB_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct igb_adapter*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct igb_adapter* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static netdev_tx_t FUNC8(struct sk_buff *skb,
				  struct net_device *netdev)
{
	struct igb_adapter *adapter = FUNC3(netdev);

	if (FUNC6(__IGB_DOWN, &adapter->state)) {
		FUNC0(skb);
		return NETDEV_TX_OK;
	}

	if (skb->len <= 0) {
		FUNC0(skb);
		return NETDEV_TX_OK;
	}

	/* The minimum packet size with TCTL.PSP set is 17 so pad the skb
	 * in order to meet this minimum size requirement.
	 */
	if (FUNC7(skb->len < 17)) {
		if (FUNC4(skb, 17 - skb->len))
			return NETDEV_TX_OK;
		skb->len = 17;
		FUNC5(skb, 17);
	}

	return FUNC2(skb, FUNC1(adapter, skb));
}