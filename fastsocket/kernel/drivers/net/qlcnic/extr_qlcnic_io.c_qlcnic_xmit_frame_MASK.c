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
typedef  int /*<<< orphan*/  u64 ;
typedef  size_t u32 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct qlcnic_skb_frag {int /*<<< orphan*/  dma; int /*<<< orphan*/  length; } ;
struct qlcnic_host_tx_ring {size_t num_desc; size_t producer; struct qlcnic_cmd_buffer* cmd_buf_arr; struct cmd_desc_type0* desc_head; } ;
struct qlcnic_cmd_buffer {int frag_count; struct qlcnic_skb_frag* frag_array; struct sk_buff* skb; } ;
struct TYPE_5__ {int /*<<< orphan*/  txdropped; int /*<<< orphan*/  xmitcalled; int /*<<< orphan*/  txbytes; int /*<<< orphan*/  tx_dma_map_error; int /*<<< orphan*/  xmit_off; } ;
struct qlcnic_adapter {int flags; TYPE_2__ stats; scalar_t__ mac_learn; int /*<<< orphan*/  portnum; struct pci_dev* pdev; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  state; struct qlcnic_host_tx_ring* tx_ring; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct ethhdr {int /*<<< orphan*/  h_source; } ;
struct cmd_desc_type0 {void* addr_buffer4; void* addr_buffer3; void* addr_buffer2; void* addr_buffer1; int /*<<< orphan*/ * buffer_length; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_6__ {int nr_frags; TYPE_1__* frags; } ;
struct TYPE_4__ {scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int QLCNIC_MACSPOOF ; 
 int QLCNIC_MAX_FRAGS_PER_TX ; 
 scalar_t__ TX_STOP_THRESH ; 
 int /*<<< orphan*/  __QLCNIC_DEV_UP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 void* FUNC5 (size_t,size_t) ; 
 struct qlcnic_adapter* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct pci_dev*,struct sk_buff*,struct qlcnic_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC11 (struct qlcnic_adapter*,struct cmd_desc_type0*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct cmd_desc_type0*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct cmd_desc_type0*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct qlcnic_host_tx_ring*) ; 
 int FUNC15 (struct qlcnic_adapter*,struct cmd_desc_type0*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*,struct sk_buff*,struct qlcnic_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC17 (struct qlcnic_host_tx_ring*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 TYPE_3__* FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int) ; 

netdev_tx_t FUNC23(struct sk_buff *skb, struct net_device *netdev)
{
	struct qlcnic_adapter *adapter = FUNC6(netdev);
	struct qlcnic_host_tx_ring *tx_ring = adapter->tx_ring;
	struct qlcnic_cmd_buffer *pbuf;
	struct qlcnic_skb_frag *buffrag;
	struct cmd_desc_type0 *hwdesc, *first_desc;
	struct pci_dev *pdev;
	struct ethhdr *phdr;
	int i, k, frag_count, delta = 0;
	u32 producer, num_txd;

	num_txd = tx_ring->num_desc;

	if (!FUNC21(__QLCNIC_DEV_UP, &adapter->state)) {
		FUNC8(netdev);
		return NETDEV_TX_BUSY;
	}

	if (adapter->flags & QLCNIC_MACSPOOF) {
		phdr = (struct ethhdr *)skb->data;
		if (FUNC1(phdr->h_source, adapter->mac_addr))
			goto drop_packet;
	}

	frag_count = FUNC19(skb)->nr_frags + 1;
	/* 14 frags supported for normal packet and
	 * 32 frags supported for TSO packet
	 */
	if (!FUNC18(skb) && frag_count > QLCNIC_MAX_FRAGS_PER_TX) {

		for (i = 0; i < (frag_count - QLCNIC_MAX_FRAGS_PER_TX); i++)
			delta += FUNC19(skb)->frags[i].size;

		if (!FUNC0(skb, delta))
			goto drop_packet;

		frag_count = 1 + FUNC19(skb)->nr_frags;
	}

	if (FUNC22(FUNC14(tx_ring) <= TX_STOP_THRESH)) {
		FUNC8(netdev);
		if (FUNC14(tx_ring) > TX_STOP_THRESH) {
			FUNC7(netdev);
		} else {
			adapter->stats.xmit_off++;
			return NETDEV_TX_BUSY;
		}
	}

	producer = tx_ring->producer;
	pbuf = &tx_ring->cmd_buf_arr[producer];
	pdev = adapter->pdev;
	first_desc = &tx_ring->desc_head[producer];
	hwdesc = &tx_ring->desc_head[producer];
	FUNC9((u64 *)hwdesc);

	if (FUNC10(pdev, skb, pbuf)) {
		adapter->stats.tx_dma_map_error++;
		goto drop_packet;
	}

	pbuf->skb = skb;
	pbuf->frag_count = frag_count;

	FUNC12(first_desc, frag_count, skb->len);
	FUNC13(first_desc, adapter->portnum);

	for (i = 0; i < frag_count; i++) {
		k = i % 4;

		if ((k == 0) && (i > 0)) {
			/* move to next desc.*/
			producer = FUNC5(producer, num_txd);
			hwdesc = &tx_ring->desc_head[producer];
			FUNC9((u64 *)hwdesc);
			tx_ring->cmd_buf_arr[producer].skb = NULL;
		}

		buffrag = &pbuf->frag_array[i];
		hwdesc->buffer_length[k] = FUNC2(buffrag->length);
		switch (k) {
		case 0:
			hwdesc->addr_buffer1 = FUNC3(buffrag->dma);
			break;
		case 1:
			hwdesc->addr_buffer2 = FUNC3(buffrag->dma);
			break;
		case 2:
			hwdesc->addr_buffer3 = FUNC3(buffrag->dma);
			break;
		case 3:
			hwdesc->addr_buffer4 = FUNC3(buffrag->dma);
			break;
		}
	}

	tx_ring->producer = FUNC5(producer, num_txd);
	FUNC20();

	if (FUNC22(FUNC15(adapter, first_desc, skb)))
		goto unwind_buff;

	if (adapter->mac_learn)
		FUNC11(adapter, first_desc, skb);

	adapter->stats.txbytes += skb->len;
	adapter->stats.xmitcalled++;

	FUNC17(tx_ring);

	return NETDEV_TX_OK;

unwind_buff:
	FUNC16(pdev, skb, pbuf);
drop_packet:
	adapter->stats.txdropped++;
	FUNC4(skb);
	return NETDEV_TX_OK;
}