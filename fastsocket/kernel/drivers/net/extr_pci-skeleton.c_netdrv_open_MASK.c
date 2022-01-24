#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned long data; int /*<<< orphan*/ * function; scalar_t__ expires; } ;
struct netdrv_private {int tx_flag; TYPE_1__ timer; scalar_t__ full_duplex; int /*<<< orphan*/  pci_dev; scalar_t__ duplex_lock; int /*<<< orphan*/  rx_ring_dma; int /*<<< orphan*/ * rx_ring; int /*<<< orphan*/  tx_bufs_dma; int /*<<< orphan*/ * tx_bufs; void* mmio_addr; } ;
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENOMEM ; 
 int HZ ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  MediaStatus ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RX_BUF_TOT_LEN ; 
 int /*<<< orphan*/  TX_BUF_TOT_LEN ; 
 int TX_FIFO_THRESH ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 struct netdrv_private* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  netdrv_interrupt ; 
 int /*<<< orphan*/  netdrv_timer ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC12 (struct net_device *dev)
{
	struct netdrv_private *tp = FUNC5(dev);
	int retval;
#ifdef NETDRV_DEBUG
	void *ioaddr = tp->mmio_addr;
#endif

	FUNC0 ("ENTER\n");

	retval = FUNC11 (dev->irq, netdrv_interrupt, IRQF_SHARED, dev->name, dev);
	if (retval) {
		FUNC0 ("EXIT, returning %d\n", retval);
		return retval;
	}

	tp->tx_bufs = FUNC8(tp->pci_dev, TX_BUF_TOT_LEN,
					   &tp->tx_bufs_dma);
	tp->rx_ring = FUNC8(tp->pci_dev, RX_BUF_TOT_LEN,
					   &tp->rx_ring_dma);
	if (tp->tx_bufs == NULL || tp->rx_ring == NULL) {
		FUNC3(dev->irq, dev);

		if (tp->tx_bufs)
			FUNC9(tp->pci_dev, TX_BUF_TOT_LEN,
					    tp->tx_bufs, tp->tx_bufs_dma);
		if (tp->rx_ring)
			FUNC9(tp->pci_dev, RX_BUF_TOT_LEN,
					    tp->rx_ring, tp->rx_ring_dma);

		FUNC0 ("EXIT, returning -ENOMEM\n");
		return -ENOMEM;

	}

	tp->full_duplex = tp->duplex_lock;
	tp->tx_flag = (TX_FIFO_THRESH << 11) & 0x003f0000;

	FUNC7 (dev);
	FUNC6 (dev);

	FUNC0 ("%s: netdrv_open() ioaddr %#lx IRQ %d"
			" GP Pins %2.2x %s-duplex.\n",
			dev->name, FUNC10 (tp->pci_dev, 1),
			dev->irq, FUNC1 (MediaStatus),
			tp->full_duplex ? "full" : "half");

	/* Set the timer to switch to check for link beat and perhaps switch
	   to an alternate media type. */
	FUNC4 (&tp->timer);
	tp->timer.expires = jiffies + 3 * HZ;
	tp->timer.data = (unsigned long) dev;
	tp->timer.function = &netdrv_timer;
	FUNC2 (&tp->timer);

	FUNC0 ("EXIT, returning 0\n");
	return 0;
}