#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_dropped; } ;
struct net_device {int /*<<< orphan*/  trans_start; TYPE_1__ stats; } ;
struct ipoib_dev_priv {int tx_outstanding; int /*<<< orphan*/  send_cq; int /*<<< orphan*/  ca; } ;
struct ipoib_cm_tx_buf {int /*<<< orphan*/  mapping; struct sk_buff* skb; } ;
struct ipoib_cm_tx {scalar_t__ mtu; int tx_head; TYPE_2__* qp; struct ipoib_cm_tx_buf* tx_ring; } ;
struct TYPE_4__ {int /*<<< orphan*/  qp_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int IB_CQ_NEXT_COMP ; 
 int IB_CQ_REPORT_MISSED_EVENTS ; 
 scalar_t__ IPOIB_ENCAP_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ipoib_dev_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ipoib_dev_priv*,char*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct net_device*) ; 
 int ipoib_sendq_size ; 
 int /*<<< orphan*/  FUNC9 (struct ipoib_dev_priv*,char*,...) ; 
 int /*<<< orphan*/  jiffies ; 
 struct ipoib_dev_priv* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int FUNC12 (struct ipoib_dev_priv*,struct ipoib_cm_tx*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 scalar_t__ FUNC15 (int) ; 

void FUNC16(struct net_device *dev, struct sk_buff *skb, struct ipoib_cm_tx *tx)
{
	struct ipoib_dev_priv *priv = FUNC10(dev);
	struct ipoib_cm_tx_buf *tx_req;
	u64 addr;
	int rc;

	if (FUNC15(skb->len > tx->mtu)) {
		FUNC9(priv, "packet len %d (> %d) too long to send, dropping\n",
			   skb->len, tx->mtu);
		++dev->stats.tx_dropped;
		++dev->stats.tx_errors;
		FUNC5(dev, skb, tx->mtu - IPOIB_ENCAP_LEN);
		return;
	}

	FUNC7(priv, "sending packet: head 0x%x length %d connection 0x%x\n",
		       tx->tx_head, skb->len, tx->qp->qp_num);

	/*
	 * We put the skb into the tx_ring _before_ we call post_send()
	 * because it's entirely possible that the completion handler will
	 * run before we execute anything after the post_send().  That
	 * means we have to make sure everything is properly recorded and
	 * our state is consistent before we call post_send().
	 */
	tx_req = &tx->tx_ring[tx->tx_head & (ipoib_sendq_size - 1)];
	tx_req->skb = skb;
	addr = FUNC1(priv->ca, skb->data, skb->len, DMA_TO_DEVICE);
	if (FUNC15(FUNC2(priv->ca, addr))) {
		++dev->stats.tx_errors;
		FUNC0(skb);
		return;
	}

	tx_req->mapping = addr;

	FUNC14(skb);
	FUNC13(skb);

	rc = FUNC12(priv, tx, tx->tx_head & (ipoib_sendq_size - 1),
		       addr, skb->len);
	if (FUNC15(rc)) {
		FUNC9(priv, "post_send failed, error %d\n", rc);
		++dev->stats.tx_errors;
		FUNC3(priv->ca, addr, skb->len, DMA_TO_DEVICE);
		FUNC0(skb);
	} else {
		dev->trans_start = jiffies;
		++tx->tx_head;

		if (++priv->tx_outstanding == ipoib_sendq_size) {
			FUNC6(priv, "TX ring 0x%x full, stopping kernel net queue\n",
				  tx->qp->qp_num);
			FUNC11(dev);
			rc = FUNC4(priv->send_cq,
				IB_CQ_NEXT_COMP | IB_CQ_REPORT_MISSED_EVENTS);
			if (rc < 0)
				FUNC9(priv, "request notify on send CQ failed\n");
			else if (rc)
				FUNC8(priv->send_cq, dev);
		}
	}
}