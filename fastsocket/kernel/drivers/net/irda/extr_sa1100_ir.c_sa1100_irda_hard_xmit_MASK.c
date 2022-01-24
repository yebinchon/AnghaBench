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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  truesize; int /*<<< orphan*/  data; int /*<<< orphan*/  len; int /*<<< orphan*/  head; } ;
struct sa1100_irda {int speed; int newspeed; int hscr0; int /*<<< orphan*/  txbuf_dma; int /*<<< orphan*/  txdma; int /*<<< orphan*/  dev; struct sk_buff* txskb; TYPE_1__ tx_buff; } ;
struct net_device {int /*<<< orphan*/  trans_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int HSCR0_HSSP ; 
 int HSCR0_TXE ; 
 int /*<<< orphan*/  FUNC1 (struct sa1100_irda*) ; 
 int NETDEV_TX_OK ; 
 int Ser2HSCR0 ; 
 int Ser2UTCR3 ; 
 int UTCR3_TIE ; 
 int UTCR3_TXE ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct sa1100_irda* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct sa1100_irda*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, struct net_device *dev)
{
	struct sa1100_irda *si = FUNC7(dev);
	int speed = FUNC6(skb);

	/*
	 * Does this packet contain a request to change the interface
	 * speed?  If so, remember it until we complete the transmission
	 * of this frame.
	 */
	if (speed != si->speed && speed != -1)
		si->newspeed = speed;

	/*
	 * If this is an empty frame, we can bypass a lot.
	 */
	if (skb->len == 0) {
		if (si->newspeed) {
			si->newspeed = 0;
			FUNC9(si, speed);
		}
		FUNC3(skb);
		return NETDEV_TX_OK;
	}

	if (!FUNC1(si)) {
		FUNC8(dev);

		si->tx_buff.data = si->tx_buff.head;
		si->tx_buff.len  = FUNC2(skb, si->tx_buff.data,
						  si->tx_buff.truesize);

		/*
		 * Set the transmit interrupt enable.  This will fire
		 * off an interrupt immediately.  Note that we disable
		 * the receiver so we won't get spurious characteres
		 * received.
		 */
		Ser2UTCR3 = UTCR3_TIE | UTCR3_TXE;

		FUNC3(skb);
	} else {
		int mtt = FUNC5(skb);

		/*
		 * We must not be transmitting...
		 */
		FUNC0(si->txskb);

		FUNC8(dev);

		si->txskb = skb;
		si->txbuf_dma = FUNC4(si->dev, skb->data,
					 skb->len, DMA_TO_DEVICE);

		FUNC10(si->txdma, si->txbuf_dma, skb->len);

		/*
		 * If we have a mean turn-around time, impose the specified
		 * specified delay.  We could shorten this by timing from
		 * the point we received the packet.
		 */
		if (mtt)
			FUNC11(mtt);

		Ser2HSCR0 = si->hscr0 | HSCR0_HSSP | HSCR0_TXE;
	}

	dev->trans_start = jiffies;

	return NETDEV_TX_OK;
}