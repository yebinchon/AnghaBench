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
struct TYPE_2__ {int /*<<< orphan*/  tx_packets; } ;
struct net_device {int /*<<< orphan*/  trans_start; TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  TX_ADDR ; 
 int TX_BUSY ; 
 int /*<<< orphan*/  TX_ENABLE ; 
 int TX_FAILED16 ; 
 int TX_PAGES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int free_tx_pages ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/ * tx_fifo ; 
 int tx_fifo_out ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, int irq_status)
{
	/*
	 * Returns 1 if tx still not done
	 */

	/* Check if current transmission is done yet */
	if (irq_status & TX_BUSY)
		return 1; /* tx not done, try again */

	/* else */
	/* If last transmission OK then bump fifo index */
	if (!(irq_status & TX_FAILED16)) {
		tx_fifo_out = (tx_fifo_out + 1) % TX_PAGES;
		++free_tx_pages;
		dev->stats.tx_packets++;
		FUNC2(dev);
	}

	/* More to send, or resend last packet? */
	if ((free_tx_pages < TX_PAGES) || (irq_status & TX_FAILED16)) {
		dev->trans_start = jiffies;
		FUNC1(tx_fifo[tx_fifo_out], TX_ADDR);
		FUNC0(TX_ENABLE);
		return 1;
	}
	/* else */

	return 0;
}