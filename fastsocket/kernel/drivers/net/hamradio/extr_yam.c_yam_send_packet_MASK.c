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
struct yam_port {int /*<<< orphan*/  send_queue; } ;
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  trans_start; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  jiffies ; 
 struct yam_port* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static netdev_tx_t FUNC2(struct sk_buff *skb,
					 struct net_device *dev)
{
	struct yam_port *yp = FUNC0(dev);

	FUNC1(&yp->send_queue, skb);
	dev->trans_start = jiffies;
	return NETDEV_TX_OK;
}