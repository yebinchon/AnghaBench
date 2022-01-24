#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct enc28j60_net {TYPE_2__* tx_skb; } ;
struct TYPE_4__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECON1 ; 
 int /*<<< orphan*/  ECON1_TXRTS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct enc28j60_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct enc28j60_net* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *ndev, bool err)
{
	struct enc28j60_net *priv = FUNC2(ndev);

	if (err)
		ndev->stats.tx_errors++;
	else
		ndev->stats.tx_packets++;

	if (priv->tx_skb) {
		if (!err)
			ndev->stats.tx_bytes += priv->tx_skb->len;
		FUNC0(priv->tx_skb);
		priv->tx_skb = NULL;
	}
	FUNC1(priv, ECON1, ECON1_TXRTS);
	FUNC3(ndev);
}