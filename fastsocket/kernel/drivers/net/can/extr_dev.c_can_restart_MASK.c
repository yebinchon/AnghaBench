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
struct sk_buff {int /*<<< orphan*/  protocol; struct net_device* dev; } ;
struct net_device_stats {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_2__ dev; struct net_device_stats stats; } ;
struct TYPE_3__ {int /*<<< orphan*/  restarts; } ;
struct can_priv {int (* do_set_mode ) (struct net_device*,int /*<<< orphan*/ ) ;TYPE_1__ can_stats; } ;
struct can_frame {int can_id; scalar_t__ can_dlc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CAN_ERR_DLC ; 
 int CAN_ERR_FLAG ; 
 int CAN_ERR_RESTARTED ; 
 int /*<<< orphan*/  CAN_MODE_START ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_P_CAN ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct sk_buff* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct can_frame*,int /*<<< orphan*/ ,int) ; 
 struct can_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int) ; 
 int FUNC12 (struct net_device*,int /*<<< orphan*/ ) ; 

void FUNC13(unsigned long data)
{
	struct net_device *dev = (struct net_device *)data;
	struct can_priv *priv = FUNC7(dev);
	struct net_device_stats *stats = &dev->stats;
	struct sk_buff *skb;
	struct can_frame *cf;
	int err;

	FUNC0(FUNC8(dev));

	/*
	 * No synchronization needed because the device is bus-off and
	 * no messages can come in or go out.
	 */
	FUNC1(dev);

	/* send restart message upstream */
	skb = FUNC2(sizeof(struct can_frame));
	if (skb == NULL) {
		err = -ENOMEM;
		goto restart;
	}
	skb->dev = dev;
	skb->protocol = FUNC5(ETH_P_CAN);
	cf = (struct can_frame *)FUNC11(skb, sizeof(struct can_frame));
	FUNC6(cf, 0, sizeof(struct can_frame));
	cf->can_id = CAN_ERR_FLAG | CAN_ERR_RESTARTED;
	cf->can_dlc = CAN_ERR_DLC;

	FUNC10(skb);

	stats->rx_packets++;
	stats->rx_bytes += cf->can_dlc;

restart:
	FUNC3(dev->dev.parent, "restarted\n");
	priv->can_stats.restarts++;

	/* Now restart the device */
	err = priv->do_set_mode(dev, CAN_MODE_START);

	FUNC9(dev);
	if (err)
		FUNC4(dev->dev.parent, "Error %d during restart", err);
}