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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct net_device {int /*<<< orphan*/  trans_start; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_errors; } ;
struct kaweth_device {int /*<<< orphan*/  device_lock; TYPE_1__ stats; int /*<<< orphan*/  tx_urb; scalar_t__ end; int /*<<< orphan*/  dev; struct sk_buff* tx_skb; int /*<<< orphan*/  status; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 scalar_t__ FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (struct kaweth_device*) ; 
 int /*<<< orphan*/  kaweth_usb_transmit_complete ; 
 struct kaweth_device* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 
 struct sk_buff* FUNC10 (struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kaweth_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static netdev_tx_t FUNC17(struct sk_buff *skb,
					   struct net_device *net)
{
	struct kaweth_device *kaweth = FUNC6(net);
	__le16 *private_header;

	int res;

	FUNC12(&kaweth->device_lock);

	FUNC5(kaweth);
	FUNC8(net);
	if (FUNC0(kaweth->status)) {
		goto skip;
	}

	/* We now decide whether we can put our special header into the sk_buff */
	if (FUNC9(skb) || FUNC11(skb) < 2) {
		/* no such luck - we make our own */
		struct sk_buff *copied_skb;
		copied_skb = FUNC10(skb, 2, 0, GFP_ATOMIC);
		FUNC3(skb);
		skb = copied_skb;
		if (!copied_skb) {
			kaweth->stats.tx_errors++;
			FUNC7(net);
			FUNC13(&kaweth->device_lock);
			return NETDEV_TX_OK;
		}
	}

	private_header = (__le16 *)FUNC1(skb, 2);
	*private_header = FUNC2(skb->len-2);
	kaweth->tx_skb = skb;

	FUNC14(kaweth->tx_urb,
		      kaweth->dev,
		      FUNC15(kaweth->dev, 2),
		      private_header,
		      skb->len,
		      kaweth_usb_transmit_complete,
		      kaweth);
	kaweth->end = 0;

	if((res = FUNC16(kaweth->tx_urb, GFP_ATOMIC)))
	{
		FUNC4(&net->dev, "kaweth failed tx_urb %d\n", res);
skip:
		kaweth->stats.tx_errors++;

		FUNC7(net);
		FUNC3(skb);
	}
	else
	{
		kaweth->stats.tx_packets++;
		kaweth->stats.tx_bytes += skb->len;
		net->trans_start = jiffies;
	}

	FUNC13(&kaweth->device_lock);

	return NETDEV_TX_OK;
}