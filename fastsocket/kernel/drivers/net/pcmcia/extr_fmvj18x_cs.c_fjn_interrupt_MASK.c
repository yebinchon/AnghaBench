#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned short tx_packets; } ;
struct net_device {unsigned int base_addr; unsigned short name; int /*<<< orphan*/  trans_start; TYPE_1__ stats; } ;
struct TYPE_5__ {unsigned short sent; int tx_queue; int /*<<< orphan*/ * base; scalar_t__ tx_started; scalar_t__ tx_queue_len; } ;
typedef  TYPE_2__ local_info_t ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned short,...) ; 
 unsigned short DO_TX ; 
 unsigned short D_RX_INTR ; 
 unsigned short D_TX_INTR ; 
 unsigned short F_BUF_EMP ; 
 unsigned short F_TMT_RDY ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ RX_INTR ; 
 scalar_t__ RX_MODE ; 
 scalar_t__ RX_STATUS ; 
 scalar_t__ TX_INTR ; 
 scalar_t__ TX_START ; 
 scalar_t__ TX_STATUS ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 unsigned short FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  jiffies ; 
 TYPE_2__* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned short,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC9(int dummy, void *dev_id)
{
    struct net_device *dev = dev_id;
    local_info_t *lp = FUNC3(dev);
    unsigned int ioaddr;
    unsigned short tx_stat, rx_stat;

    ioaddr = dev->base_addr;

    /* avoid multiple interrupts */
    FUNC6(0x0000, ioaddr + TX_INTR);

    /* wait for a while */
    FUNC7(1);

    /* get status */
    tx_stat = FUNC2(ioaddr + TX_STATUS);
    rx_stat = FUNC2(ioaddr + RX_STATUS);

    /* clear status */
    FUNC5(tx_stat, ioaddr + TX_STATUS);
    FUNC5(rx_stat, ioaddr + RX_STATUS);
    
    FUNC0(4, "%s: interrupt, rx_status %02x.\n", dev->name, rx_stat);
    FUNC0(4, "               tx_status %02x.\n", tx_stat);
    
    if (rx_stat || (FUNC2(ioaddr + RX_MODE) & F_BUF_EMP) == 0) {
	/* there is packet(s) in rx buffer */
	FUNC1(dev);
    }
    if (tx_stat & F_TMT_RDY) {
	dev->stats.tx_packets += lp->sent ;
        lp->sent = 0 ;
	if (lp->tx_queue) {
	    FUNC5(DO_TX | lp->tx_queue, ioaddr + TX_START);
	    lp->sent = lp->tx_queue ;
	    lp->tx_queue = 0;
	    lp->tx_queue_len = 0;
	    dev->trans_start = jiffies;
	} else {
	    lp->tx_started = 0;
	}
	FUNC4(dev);
    }
    FUNC0(4, "%s: exiting interrupt,\n", dev->name);
    FUNC0(4, "    tx_status %02x, rx_status %02x.\n", tx_stat, rx_stat);

    FUNC5(D_TX_INTR, ioaddr + TX_INTR);
    FUNC5(D_RX_INTR, ioaddr + RX_INTR);

    if (lp->base != NULL) {
	/* Ack interrupt for multifunction card */
	FUNC8(0x01, lp->base+0x802);
	FUNC8(0x09, lp->base+0x822);
    }

    return IRQ_HANDLED;

}