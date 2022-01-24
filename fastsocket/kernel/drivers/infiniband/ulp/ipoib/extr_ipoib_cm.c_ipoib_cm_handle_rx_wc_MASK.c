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
struct sk_buff {int /*<<< orphan*/  pkt_type; struct net_device* dev; scalar_t__ len; scalar_t__ data; int /*<<< orphan*/  protocol; } ;
struct TYPE_5__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; } ;
struct net_device {TYPE_2__ stats; } ;
struct ipoib_header {int /*<<< orphan*/  proto; } ;
struct TYPE_6__ {int /*<<< orphan*/  rx_sge; int /*<<< orphan*/  rx_wr; int /*<<< orphan*/  passive_ids; int /*<<< orphan*/  rx_reap_task; int /*<<< orphan*/  rx_reap_list; struct ipoib_cm_rx_buf* srq_ring; int /*<<< orphan*/  rx_drain_list; } ;
struct ipoib_dev_priv {TYPE_3__ cm; int /*<<< orphan*/  ca; int /*<<< orphan*/  lock; } ;
struct ipoib_cm_rx_buf {int /*<<< orphan*/ * mapping; struct sk_buff* skb; } ;
struct ipoib_cm_rx {scalar_t__ state; int /*<<< orphan*/  recv_count; int /*<<< orphan*/  list; scalar_t__ jiffies; struct ipoib_cm_rx_buf* rx_ring; } ;
struct ib_wc {unsigned int wr_id; int byte_len; int /*<<< orphan*/  slid; int /*<<< orphan*/  vendor_err; int /*<<< orphan*/  status; TYPE_1__* qp; } ;
struct TYPE_4__ {struct ipoib_cm_rx* qp_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  IB_WC_SUCCESS ; 
 int IPOIB_CM_COPYBREAK ; 
 scalar_t__ IPOIB_CM_HEAD_SIZE ; 
 unsigned int IPOIB_CM_RX_DRAIN_WRID ; 
 scalar_t__ IPOIB_CM_RX_LIVE ; 
 int IPOIB_CM_RX_SG ; 
 unsigned int IPOIB_CM_RX_UPDATE_MASK ; 
 scalar_t__ IPOIB_CM_RX_UPDATE_TIME ; 
 int /*<<< orphan*/  IPOIB_ENCAP_LEN ; 
 unsigned int IPOIB_OP_CM ; 
 unsigned int IPOIB_OP_RECV ; 
 int /*<<< orphan*/  PACKET_HOST ; 
 int FUNC0 (scalar_t__) ; 
 int PAGE_SIZE ; 
 struct sk_buff* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (struct net_device*,struct ipoib_cm_rx_buf*,unsigned int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ipoib_dev_priv*,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*,struct ipoib_cm_rx*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC8 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct ipoib_dev_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct ipoib_dev_priv*,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC11 (struct ipoib_dev_priv*,char*,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int ipoib_recvq_size ; 
 int /*<<< orphan*/  FUNC12 (struct ipoib_dev_priv*,char*,unsigned int,...) ; 
 int /*<<< orphan*/  ipoib_workqueue ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC16 (int,unsigned int) ; 
 struct ipoib_dev_priv* FUNC17 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*,scalar_t__,unsigned int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC28 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC29 (int) ; 

void FUNC30(struct net_device *dev, struct ib_wc *wc)
{
	struct ipoib_dev_priv *priv = FUNC17(dev);
	struct ipoib_cm_rx_buf *rx_ring;
	unsigned int wr_id = wc->wr_id & ~(IPOIB_OP_CM | IPOIB_OP_RECV);
	struct sk_buff *skb, *newskb;
	struct ipoib_cm_rx *p;
	unsigned long flags;
	u64 mapping[IPOIB_CM_RX_SG];
	int frags;
	int has_srq;
	struct sk_buff *small_skb;

	FUNC11(priv, "cm recv completion: id %d, status: %d\n",
		       wr_id, wc->status);

	if (FUNC29(wr_id >= ipoib_recvq_size)) {
		if (wr_id == (IPOIB_CM_RX_DRAIN_WRID & ~(IPOIB_OP_CM | IPOIB_OP_RECV))) {
			FUNC26(&priv->lock, flags);
			FUNC14(&priv->cm.rx_drain_list, &priv->cm.rx_reap_list);
			FUNC9(priv);
			FUNC19(ipoib_workqueue, &priv->cm.rx_reap_task);
			FUNC27(&priv->lock, flags);
		} else
			FUNC12(priv, "cm recv completion event with wrid %d (> %d)\n",
				   wr_id, ipoib_recvq_size);
		return;
	}

	p = wc->qp->qp_context;

	has_srq = FUNC6(dev);
	rx_ring = has_srq ? priv->cm.srq_ring : p->rx_ring;

	skb = rx_ring[wr_id].skb;

	if (FUNC29(wc->status != IB_WC_SUCCESS)) {
		FUNC10(priv, "cm recv error "
			   "(status=%d, wrid=%d vend_err %x)\n",
			   wc->status, wr_id, wc->vendor_err);
		++dev->stats.rx_dropped;
		if (has_srq)
			goto repost;
		else {
			if (!--p->recv_count) {
				FUNC26(&priv->lock, flags);
				FUNC13(&p->list, &priv->cm.rx_reap_list);
				FUNC27(&priv->lock, flags);
				FUNC19(ipoib_workqueue, &priv->cm.rx_reap_task);
			}
			return;
		}
	}

	if (FUNC29(!(wr_id & IPOIB_CM_RX_UPDATE_MASK))) {
		if (p && FUNC28(jiffies, p->jiffies + IPOIB_CM_RX_UPDATE_TIME)) {
			FUNC26(&priv->lock, flags);
			p->jiffies = jiffies;
			/* Move this entry to list head, but do not re-add it
			 * if it has been moved out of list. */
			if (p->state == IPOIB_CM_RX_LIVE)
				FUNC13(&p->list, &priv->cm.passive_ids);
			FUNC27(&priv->lock, flags);
		}
	}

	if (wc->byte_len < IPOIB_CM_COPYBREAK) {
		int dlen = wc->byte_len;

		small_skb = FUNC1(dlen + 12);
		if (small_skb) {
			FUNC24(small_skb, 12);
			FUNC2(priv->ca, rx_ring[wr_id].mapping[0],
						   dlen, DMA_FROM_DEVICE);
			FUNC20(skb, small_skb->data, dlen);
			FUNC3(priv->ca, rx_ring[wr_id].mapping[0],
						      dlen, DMA_FROM_DEVICE);
			FUNC22(small_skb, dlen);
			skb = small_skb;
			goto copied;
		}
	}

	frags = FUNC0(wc->byte_len - FUNC16(wc->byte_len,
					      (unsigned)IPOIB_CM_HEAD_SIZE)) / PAGE_SIZE;

	newskb = FUNC4(dev, rx_ring, wr_id, frags, mapping);
	if (FUNC29(!newskb)) {
		/*
		 * If we can't allocate a new RX buffer, dump
		 * this packet and reuse the old buffer.
		 */
		FUNC10(priv, "failed to allocate receive buffer %d\n", wr_id);
		++dev->stats.rx_dropped;
		goto repost;
	}

	FUNC5(priv, frags, rx_ring[wr_id].mapping);
	FUNC15(rx_ring[wr_id].mapping, mapping, (frags + 1) * sizeof *mapping);

	FUNC11(priv, "received %d bytes, SLID 0x%04x\n",
		       wc->byte_len, wc->slid);

	FUNC23(skb, IPOIB_CM_HEAD_SIZE, wc->byte_len, newskb);

copied:
	skb->protocol = ((struct ipoib_header *) skb->data)->proto;
	FUNC25(skb);
	FUNC21(skb, IPOIB_ENCAP_LEN);

	++dev->stats.rx_packets;
	dev->stats.rx_bytes += skb->len;

	skb->dev = dev;
	/* XXX get correct PACKET_ type here */
	skb->pkt_type = PACKET_HOST;
	FUNC18(skb);

repost:
	if (has_srq) {
		if (FUNC29(FUNC8(dev, wr_id)))
			FUNC12(priv, "ipoib_cm_post_receive_srq failed "
				   "for buf %d\n", wr_id);
	} else {
		if (FUNC29(FUNC7(dev, p,
							  &priv->cm.rx_wr,
							  priv->cm.rx_sge,
							  wr_id))) {
			--p->recv_count;
			FUNC12(priv, "ipoib_cm_post_receive_nonsrq failed "
				   "for buf %d\n", wr_id);
		}
	}
}