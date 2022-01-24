#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct sk_buff {int /*<<< orphan*/  protocol; scalar_t__ data; } ;
struct rx {struct sk_buff* skb; int /*<<< orphan*/  dma_addr; } ;
struct rfd {int /*<<< orphan*/  command; int /*<<< orphan*/  actual_size; int /*<<< orphan*/  status; } ;
struct nic {scalar_t__ ru_running; int /*<<< orphan*/  rx_over_length_errors; struct net_device* netdev; TYPE_2__* csr; int /*<<< orphan*/  pdev; } ;
struct TYPE_6__ {int rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct net_device {TYPE_3__ stats; } ;
struct TYPE_4__ {int /*<<< orphan*/  status; } ;
struct TYPE_5__ {TYPE_1__ scb; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENODATA ; 
 int ETH_DATA_LEN ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  PCI_DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int RFD_BUF_LEN ; 
 scalar_t__ RU_RUNNING ; 
 void* RU_SUSPENDED ; 
 int VLAN_ETH_HLEN ; 
 int cb_complete ; 
 int cb_el ; 
 int cb_ok ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int rus_no_res ; 
 int /*<<< orphan*/  rx_status ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct nic *nic, struct rx *rx,
	unsigned int *work_done, unsigned int work_to_do)
{
	struct net_device *dev = nic->netdev;
	struct sk_buff *skb = rx->skb;
	struct rfd *rfd = (struct rfd *)skb->data;
	u16 rfd_status, actual_size;

	if (FUNC12(work_done && *work_done >= work_to_do))
		return -EAGAIN;

	/* Need to sync before taking a peek at cb_complete bit */
	FUNC6(nic->pdev, rx->dma_addr,
		sizeof(struct rfd), PCI_DMA_BIDIRECTIONAL);
	rfd_status = FUNC3(rfd->status);

	FUNC4(nic, rx_status, KERN_DEBUG, nic->netdev,
		     "status=0x%04X\n", rfd_status);
	FUNC9(); /* read size after status bit */

	/* If data isn't ready, nothing to indicate */
	if (FUNC12(!(rfd_status & cb_complete))) {
		/* If the next buffer has the el bit, but we think the receiver
		 * is still running, check to see if it really stopped while
		 * we had interrupts off.
		 * This allows for a fast restart without re-enabling
		 * interrupts */
		if ((FUNC3(rfd->command) & cb_el) &&
		    (RU_RUNNING == nic->ru_running))

			if (FUNC2(&nic->csr->scb.status) & rus_no_res)
				nic->ru_running = RU_SUSPENDED;
		FUNC7(nic->pdev, rx->dma_addr,
					       sizeof(struct rfd),
					       PCI_DMA_FROMDEVICE);
		return -ENODATA;
	}

	/* Get actual data size */
	actual_size = FUNC3(rfd->actual_size) & 0x3FFF;
	if (FUNC12(actual_size > RFD_BUF_LEN - sizeof(struct rfd)))
		actual_size = RFD_BUF_LEN - sizeof(struct rfd);

	/* Get data */
	FUNC8(nic->pdev, rx->dma_addr,
		RFD_BUF_LEN, PCI_DMA_BIDIRECTIONAL);

	/* If this buffer has the el bit, but we think the receiver
	 * is still running, check to see if it really stopped while
	 * we had interrupts off.
	 * This allows for a fast restart without re-enabling interrupts.
	 * This can happen when the RU sees the size change but also sees
	 * the el bit set. */
	if ((FUNC3(rfd->command) & cb_el) &&
	    (RU_RUNNING == nic->ru_running)) {

	    if (FUNC2(&nic->csr->scb.status) & rus_no_res)
		nic->ru_running = RU_SUSPENDED;
	}

	/* Pull off the RFD and put the actual data (minus eth hdr) */
	FUNC11(skb, sizeof(struct rfd));
	FUNC10(skb, actual_size);
	skb->protocol = FUNC1(skb, nic->netdev);

	if (FUNC12(!(rfd_status & cb_ok))) {
		/* Don't indicate if hardware indicates errors */
		FUNC0(skb);
	} else if (actual_size > ETH_DATA_LEN + VLAN_ETH_HLEN) {
		/* Don't indicate oversized frames */
		nic->rx_over_length_errors++;
		FUNC0(skb);
	} else {
		dev->stats.rx_packets++;
		dev->stats.rx_bytes += actual_size;
		FUNC5(skb);
		if (work_done)
			(*work_done)++;
	}

	rx->skb = NULL;

	return 0;
}