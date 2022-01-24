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
typedef  int u32 ;
struct sk_buff {scalar_t__ ip_summed; unsigned int len; int /*<<< orphan*/  data; scalar_t__ data_len; } ;
struct ns83820 {int CFG_cache; int tx_free_idx; unsigned int tx_done_idx; int tx_intr_idx; int tx_phy_descs; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  nr_tx_skbs; struct sk_buff** tx_skbs; int /*<<< orphan*/  pci_dev; int /*<<< orphan*/ * tx_descs; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {unsigned int size; int /*<<< orphan*/  page_offset; int /*<<< orphan*/  page; } ;
typedef  TYPE_1__ skb_frag_t ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  scalar_t__ dma_addr_t ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_6__ {scalar_t__ protocol; } ;
struct TYPE_5__ {int nr_frags; TYPE_1__* frags; } ;

/* Variables and functions */
 int CFG_LNKSTS ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 int CMDSTS_INTR ; 
 int CMDSTS_MORE ; 
 int CMDSTS_OWN ; 
 int DESC_BUFPTR ; 
 size_t DESC_CMDSTS ; 
 size_t DESC_EXTSTS ; 
 size_t DESC_LINK ; 
 int DESC_SIZE ; 
 int EXTSTS_IPPKT ; 
 int EXTSTS_TCPPKT ; 
 int EXTSTS_UDPPKT ; 
 int EXTSTS_VPKT ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 int MIN_TX_DESC_FREE ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 unsigned int NR_TX_DESC ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 struct ns83820* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  volatile FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  volatile*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (short) ; 
 TYPE_3__* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct ns83820*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (struct ns83820*) ; 
 scalar_t__ FUNC17 (int) ; 
 short FUNC18 (struct sk_buff*) ; 
 scalar_t__ FUNC19 (struct sk_buff*) ; 

__attribute__((used)) static netdev_tx_t FUNC20(struct sk_buff *skb,
					   struct net_device *ndev)
{
	struct ns83820 *dev = FUNC0(ndev);
	u32 free_idx, cmdsts, extsts;
	int nr_free, nr_frags;
	unsigned tx_done_idx, last_idx;
	dma_addr_t buf;
	unsigned len;
	skb_frag_t *frag;
	int stopped = 0;
	int do_intr = 0;
	volatile __le32 *first_desc;

	FUNC4("ns83820_hard_start_xmit\n");

	nr_frags =  FUNC13(skb)->nr_frags;
again:
	if (FUNC17(dev->CFG_cache & CFG_LNKSTS)) {
		FUNC9(ndev);
		if (FUNC17(dev->CFG_cache & CFG_LNKSTS))
			return NETDEV_TX_BUSY;
		FUNC8(ndev);
	}

	last_idx = free_idx = dev->tx_free_idx;
	tx_done_idx = dev->tx_done_idx;
	nr_free = (tx_done_idx + NR_TX_DESC-2 - free_idx) % NR_TX_DESC;
	nr_free -= 1;
	if (nr_free <= nr_frags) {
		FUNC4("stop_queue - not enough(%p)\n", ndev);
		FUNC9(ndev);

		/* Check again: we may have raced with a tx done irq */
		if (dev->tx_done_idx != tx_done_idx) {
			FUNC4("restart queue(%p)\n", ndev);
			FUNC8(ndev);
			goto again;
		}
		return NETDEV_TX_BUSY;
	}

	if (free_idx == dev->tx_intr_idx) {
		do_intr = 1;
		dev->tx_intr_idx = (dev->tx_intr_idx + NR_TX_DESC/4) % NR_TX_DESC;
	}

	nr_free -= nr_frags;
	if (nr_free < MIN_TX_DESC_FREE) {
		FUNC4("stop_queue - last entry(%p)\n", ndev);
		FUNC9(ndev);
		stopped = 1;
	}

	frag = FUNC13(skb)->frags;
	if (!nr_frags)
		frag = NULL;
	extsts = 0;
	if (skb->ip_summed == CHECKSUM_PARTIAL) {
		extsts |= EXTSTS_IPPKT;
		if (IPPROTO_TCP == FUNC6(skb)->protocol)
			extsts |= EXTSTS_TCPPKT;
		else if (IPPROTO_UDP == FUNC6(skb)->protocol)
			extsts |= EXTSTS_UDPPKT;
	}

#ifdef NS83820_VLAN_ACCEL_SUPPORT
	if(vlan_tx_tag_present(skb)) {
		/* fetch the vlan tag info out of the
		 * ancilliary data if the vlan code
		 * is using hw vlan acceleration
		 */
		short tag = vlan_tx_tag_get(skb);
		extsts |= (EXTSTS_VPKT | htons(tag));
	}
#endif

	len = skb->len;
	if (nr_frags)
		len -= skb->data_len;
	buf = FUNC12(dev->pci_dev, skb->data, len, PCI_DMA_TODEVICE);

	first_desc = dev->tx_descs + (free_idx * DESC_SIZE);

	for (;;) {
		volatile __le32 *desc = dev->tx_descs + (free_idx * DESC_SIZE);

		FUNC4("frag[%3u]: %4u @ 0x%08Lx\n", free_idx, len,
			(unsigned long long)buf);
		last_idx = free_idx;
		free_idx = (free_idx + 1) % NR_TX_DESC;
		desc[DESC_LINK] = FUNC2(dev->tx_phy_descs + (free_idx * DESC_SIZE * 4));
		FUNC3(desc + DESC_BUFPTR, buf);
		desc[DESC_EXTSTS] = FUNC2(extsts);

		cmdsts = ((nr_frags) ? CMDSTS_MORE : do_intr ? CMDSTS_INTR : 0);
		cmdsts |= (desc == first_desc) ? 0 : CMDSTS_OWN;
		cmdsts |= len;
		desc[DESC_CMDSTS] = FUNC2(cmdsts);

		if (!nr_frags)
			break;

		buf = FUNC11(dev->pci_dev, frag->page,
				   frag->page_offset,
				   frag->size, PCI_DMA_TODEVICE);
		FUNC4("frag: buf=%08Lx  page=%08lx offset=%08lx\n",
			(long long)buf, (long) FUNC10(frag->page),
			frag->page_offset);
		len = frag->size;
		frag++;
		nr_frags--;
	}
	FUNC4("done pkt\n");

	FUNC14(&dev->tx_lock);
	dev->tx_skbs[last_idx] = skb;
	first_desc[DESC_CMDSTS] |= FUNC2(CMDSTS_OWN);
	dev->tx_free_idx = free_idx;
	FUNC1(&dev->nr_tx_skbs);
	FUNC15(&dev->tx_lock);

	FUNC7(dev);

	/* Check again: we may have raced with a tx done irq */
	if (stopped && (dev->tx_done_idx != tx_done_idx) && FUNC16(dev))
		FUNC8(ndev);

	return NETDEV_TX_OK;
}