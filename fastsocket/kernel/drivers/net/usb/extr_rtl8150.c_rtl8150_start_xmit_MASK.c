#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {int tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_errors; } ;
struct net_device {int /*<<< orphan*/  trans_start; TYPE_1__ stats; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  netdev; int /*<<< orphan*/  tx_urb; int /*<<< orphan*/  udev; struct sk_buff* tx_skb; } ;
typedef  TYPE_2__ rtl8150_t ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  jiffies ; 
 TYPE_2__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_bulk_callback ; 

__attribute__((used)) static netdev_tx_t FUNC8(struct sk_buff *skb,
					    struct net_device *netdev)
{
	rtl8150_t *dev = FUNC1(netdev);
	int count, res;

	FUNC4(netdev);
	count = (skb->len < 60) ? 60 : skb->len;
	count = (count & 0x3f) ? count : count + 1;
	dev->tx_skb = skb;
	FUNC5(dev->tx_urb, dev->udev, FUNC6(dev->udev, 2),
		      skb->data, count, write_bulk_callback, dev);
	if ((res = FUNC7(dev->tx_urb, GFP_ATOMIC))) {
		/* Can we get/handle EPIPE here? */
		if (res == -ENODEV)
			FUNC2(dev->netdev);
		else {
			FUNC0(&netdev->dev, "failed tx_urb %d\n", res);
			netdev->stats.tx_errors++;
			FUNC3(netdev);
		}
	} else {
		netdev->stats.tx_packets++;
		netdev->stats.tx_bytes += skb->len;
		netdev->trans_start = jiffies;
	}

	return NETDEV_TX_OK;
}