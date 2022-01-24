#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {unsigned int flags_len; unsigned long address; } ;
union ibmveth_buf_desc {TYPE_3__ fields; } ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ protocol; int csum_offset; unsigned int len; int /*<<< orphan*/  data; } ;
struct TYPE_8__ {unsigned int tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct ibmveth_adapter {unsigned long bounce_buffer_dma; int /*<<< orphan*/  tx_map_failed; TYPE_2__* vdev; int /*<<< orphan*/  tx_send_failed; int /*<<< orphan*/  bounce_buffer; } ;
struct TYPE_11__ {unsigned int size; int /*<<< orphan*/  page_offset; int /*<<< orphan*/  page; } ;
typedef  TYPE_4__ skb_frag_t ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  int /*<<< orphan*/  descs ;
struct TYPE_14__ {scalar_t__ protocol; } ;
struct TYPE_13__ {scalar_t__ nexthdr; } ;
struct TYPE_12__ {int nr_frags; TYPE_4__* frags; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  FW_FEATURE_CMO ; 
 unsigned int IBMVETH_BUF_CSUM_GOOD ; 
 int IBMVETH_BUF_LEN_MASK ; 
 unsigned int IBMVETH_BUF_NO_CSUM ; 
 unsigned int IBMVETH_BUF_VALID ; 
 scalar_t__ IPPROTO_TCP ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct ibmveth_adapter*,union ibmveth_buf_desc*) ; 
 TYPE_7__* FUNC10 (struct sk_buff*) ; 
 TYPE_6__* FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (union ibmveth_buf_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,char*) ; 
 struct ibmveth_adapter* FUNC14 (struct net_device*) ; 
 scalar_t__ FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 TYPE_5__* FUNC20 (struct sk_buff*) ; 
 unsigned char* FUNC21 (struct sk_buff*) ; 
 unsigned int tx_copybreak ; 

__attribute__((used)) static netdev_tx_t FUNC22(struct sk_buff *skb,
				      struct net_device *netdev)
{
	struct ibmveth_adapter *adapter = FUNC14(netdev);
	unsigned int desc_flags;
	union ibmveth_buf_desc descs[6];
	int last, i;
	int force_bounce = 0;

	/*
	 * veth handles a maximum of 6 segments including the header, so
	 * we have to linearize the skb if there are more than this.
	 */
	if (FUNC20(skb)->nr_frags > 5 && FUNC0(skb)) {
		netdev->stats.tx_dropped++;
		goto out;
	}

	/* veth can't checksum offload UDP */
	if (skb->ip_summed == CHECKSUM_PARTIAL &&
	    ((skb->protocol == FUNC8(ETH_P_IP) &&
	      FUNC10(skb)->protocol != IPPROTO_TCP) ||
	     (skb->protocol == FUNC8(ETH_P_IPV6) &&
	      FUNC11(skb)->nexthdr != IPPROTO_TCP)) &&
	    FUNC15(skb)) {

		FUNC13(netdev, "tx: failed to checksum packet\n");
		netdev->stats.tx_dropped++;
		goto out;
	}

	desc_flags = IBMVETH_BUF_VALID;

	if (skb->ip_summed == CHECKSUM_PARTIAL) {
		unsigned char *buf = FUNC21(skb) +
						skb->csum_offset;

		desc_flags |= (IBMVETH_BUF_NO_CSUM | IBMVETH_BUF_CSUM_GOOD);

		/* Need to zero out the checksum */
		buf[0] = 0;
		buf[1] = 0;
	}

retry_bounce:
	FUNC12(descs, 0, sizeof(descs));

	/*
	 * If a linear packet is below the rx threshold then
	 * copy it into the static bounce buffer. This avoids the
	 * cost of a TCE insert and remove.
	 */
	if (force_bounce || (!FUNC18(skb) &&
				(skb->len < tx_copybreak))) {
		FUNC16(skb, adapter->bounce_buffer,
					  skb->len);

		descs[0].fields.flags_len = desc_flags | skb->len;
		descs[0].fields.address = adapter->bounce_buffer_dma;

		if (FUNC9(adapter, descs)) {
			adapter->tx_send_failed++;
			netdev->stats.tx_dropped++;
		} else {
			netdev->stats.tx_packets++;
			netdev->stats.tx_bytes += skb->len;
		}

		goto out;
	}

	/* Map the header */
	descs[0].fields.address = FUNC3(&adapter->vdev->dev, skb->data,
						 FUNC17(skb),
						 DMA_TO_DEVICE);
	if (FUNC4(&adapter->vdev->dev, descs[0].fields.address))
		goto map_failed;

	descs[0].fields.flags_len = desc_flags | FUNC17(skb);

	/* Map the frags */
	for (i = 0; i < FUNC20(skb)->nr_frags; i++) {
		unsigned long dma_addr;
		skb_frag_t *frag = &FUNC20(skb)->frags[i];

		dma_addr = FUNC2(&adapter->vdev->dev, frag->page,
					frag->page_offset, frag->size,
					DMA_TO_DEVICE);

		if (FUNC4(&adapter->vdev->dev, dma_addr))
			goto map_failed_frags;

		descs[i+1].fields.flags_len = desc_flags | frag->size;
		descs[i+1].fields.address = dma_addr;
	}

	if (FUNC9(adapter, descs)) {
		adapter->tx_send_failed++;
		netdev->stats.tx_dropped++;
	} else {
		netdev->stats.tx_packets++;
		netdev->stats.tx_bytes += skb->len;
	}

	FUNC6(&adapter->vdev->dev,
			 descs[0].fields.address,
			 descs[0].fields.flags_len & IBMVETH_BUF_LEN_MASK,
			 DMA_TO_DEVICE);

	for (i = 1; i < FUNC20(skb)->nr_frags + 1; i++)
		FUNC5(&adapter->vdev->dev, descs[i].fields.address,
			       descs[i].fields.flags_len & IBMVETH_BUF_LEN_MASK,
			       DMA_TO_DEVICE);

out:
	FUNC1(skb);
	return NETDEV_TX_OK;

map_failed_frags:
	last = i+1;
	for (i = 0; i < last; i++)
		FUNC5(&adapter->vdev->dev, descs[i].fields.address,
			       descs[i].fields.flags_len & IBMVETH_BUF_LEN_MASK,
			       DMA_TO_DEVICE);

map_failed:
	if (!FUNC7(FW_FEATURE_CMO))
		FUNC13(netdev, "tx: unable to map xmit buffer\n");
	adapter->tx_map_failed++;
	FUNC19(skb);
	force_bounce = 1;
	goto retry_bounce;
}