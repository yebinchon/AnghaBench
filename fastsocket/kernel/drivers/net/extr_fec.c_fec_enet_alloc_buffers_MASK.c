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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct net_device {int /*<<< orphan*/  dev; } ;
struct fec_enet_private {int /*<<< orphan*/ * tx_bounce; struct bufdesc* tx_bd_base; struct sk_buff** rx_skbuff; struct bufdesc* rx_bd_base; } ;
struct bufdesc {int /*<<< orphan*/  cbd_sc; scalar_t__ cbd_bufaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BD_ENET_RX_EMPTY ; 
 int /*<<< orphan*/  BD_SC_WRAP ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FEC_ENET_RX_FRSIZE ; 
 int /*<<< orphan*/  FEC_ENET_TX_FRSIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int RX_RING_SIZE ; 
 int TX_RING_SIZE ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fec_enet_private* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	struct fec_enet_private *fep = FUNC4(dev);
	int i;
	struct sk_buff *skb;
	struct bufdesc	*bdp;

	bdp = fep->rx_bd_base;
	for (i = 0; i < RX_RING_SIZE; i++) {
		skb = FUNC0(FEC_ENET_RX_FRSIZE);
		if (!skb) {
			FUNC2(dev);
			return -ENOMEM;
		}
		fep->rx_skbuff[i] = skb;

		bdp->cbd_bufaddr = FUNC1(&dev->dev, skb->data,
				FEC_ENET_RX_FRSIZE, DMA_FROM_DEVICE);
		bdp->cbd_sc = BD_ENET_RX_EMPTY;
		bdp++;
	}

	/* Set the last buffer to wrap. */
	bdp--;
	bdp->cbd_sc |= BD_SC_WRAP;

	bdp = fep->tx_bd_base;
	for (i = 0; i < TX_RING_SIZE; i++) {
		fep->tx_bounce[i] = FUNC3(FEC_ENET_TX_FRSIZE, GFP_KERNEL);

		bdp->cbd_sc = 0;
		bdp->cbd_bufaddr = 0;
		bdp++;
	}

	/* Set the last buffer to wrap. */
	bdp--;
	bdp->cbd_sc |= BD_SC_WRAP;

	return 0;
}