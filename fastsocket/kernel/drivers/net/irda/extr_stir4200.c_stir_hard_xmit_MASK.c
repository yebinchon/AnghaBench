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
struct stir_cb {int /*<<< orphan*/  thread; int /*<<< orphan*/  tx_pending; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct stir_cb* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static netdev_tx_t FUNC8(struct sk_buff *skb,
					struct net_device *netdev)
{
	struct stir_cb *stir = FUNC3(netdev);

	FUNC4(netdev);

	/* the IRDA wrapping routines don't deal with non linear skb */
	FUNC0(skb);

	skb = FUNC7(&stir->tx_pending, skb);
        FUNC6(stir->thread);
	
	/* this should never happen unless stop/wakeup problem */
	if (FUNC5(skb)) {
		FUNC1(1);
		FUNC2(skb);
	}

	return NETDEV_TX_OK;
}