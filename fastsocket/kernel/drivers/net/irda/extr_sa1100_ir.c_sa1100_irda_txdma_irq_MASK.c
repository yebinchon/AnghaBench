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
struct sk_buff {scalar_t__ len; } ;
struct sa1100_irda {int /*<<< orphan*/  txbuf_dma; int /*<<< orphan*/  dev; scalar_t__ newspeed; struct sk_buff* txskb; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int HSSR0_TUR ; 
 int HSSR1_TBY ; 
 int Ser2HSSR0 ; 
 int Ser2HSSR1 ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct sa1100_irda* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sa1100_irda*) ; 
 int /*<<< orphan*/  FUNC6 (struct sa1100_irda*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(void *id)
{
	struct net_device *dev = id;
	struct sa1100_irda *si = FUNC2(dev);
	struct sk_buff *skb = si->txskb;

	si->txskb = NULL;

	/*
	 * Wait for the transmission to complete.  Unfortunately,
	 * the hardware doesn't give us an interrupt to indicate
	 * "end of frame".
	 */
	do
		FUNC4();
	while (!(Ser2HSSR0 & HSSR0_TUR) || Ser2HSSR1 & HSSR1_TBY);

	/*
	 * Clear the transmit underrun bit.
	 */
	Ser2HSSR0 = HSSR0_TUR;

	/*
	 * Do we need to change speed?  Note that we're lazy
	 * here - we don't free the old rxskb.  We don't need
	 * to allocate a buffer either.
	 */
	if (si->newspeed) {
		FUNC6(si, si->newspeed);
		si->newspeed = 0;
	}

	/*
	 * Start reception.  This disables the transmitter for
	 * us.  This will be using the existing RX buffer.
	 */
	FUNC5(si);

	/*
	 * Account and free the packet.
	 */
	if (skb) {
		FUNC1(si->dev, si->txbuf_dma, skb->len, DMA_TO_DEVICE);
		dev->stats.tx_packets ++;
		dev->stats.tx_bytes += skb->len;
		FUNC0(skb);
	}

	/*
	 * Make sure that the TX queue is available for sending
	 * (for retries).  TX has priority over RX at all times.
	 */
	FUNC3(dev);
}