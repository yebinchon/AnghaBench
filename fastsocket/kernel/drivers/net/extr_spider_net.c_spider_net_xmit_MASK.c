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
struct spider_net_card {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;

/* Variables and functions */
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 struct spider_net_card* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct spider_net_card*) ; 
 scalar_t__ FUNC3 (struct spider_net_card*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct spider_net_card*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct spider_net_card*) ; 

__attribute__((used)) static int
FUNC6(struct sk_buff *skb, struct net_device *netdev)
{
	int cnt;
	struct spider_net_card *card = FUNC0(netdev);

	FUNC4(card, 0);

	if (FUNC3(card, skb) != 0) {
		netdev->stats.tx_dropped++;
		FUNC1(netdev);
		return NETDEV_TX_BUSY;
	}

	cnt = FUNC5(card);
	if (cnt < 5)
		FUNC2(card);
	return NETDEV_TX_OK;
}