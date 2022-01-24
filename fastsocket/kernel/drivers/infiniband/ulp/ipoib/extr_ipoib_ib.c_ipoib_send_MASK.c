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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {scalar_t__ len; scalar_t__ ip_summed; void* data; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_dropped; } ;
struct net_device {int /*<<< orphan*/  trans_start; TYPE_2__ stats; } ;
struct ipoib_tx_buf {struct sk_buff* skb; } ;
struct TYPE_3__ {int /*<<< orphan*/  send_flags; } ;
struct ipoib_dev_priv {scalar_t__ mcast_mtu; int tx_head; int tx_outstanding; int /*<<< orphan*/  ca; int /*<<< orphan*/  send_cq; TYPE_1__ tx_wr; struct ipoib_tx_buf* tx_ring; } ;
struct ipoib_ah {int last_send; int /*<<< orphan*/  ah; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  IB_CQ_NEXT_COMP ; 
 int /*<<< orphan*/  IB_SEND_IP_CSUM ; 
 scalar_t__ IPOIB_ENCAP_LEN ; 
 int MAX_SEND_CQE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_dev_priv*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipoib_dev_priv*,char*,scalar_t__,struct ipoib_ah*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct ipoib_tx_buf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct ipoib_tx_buf*) ; 
 int ipoib_sendq_size ; 
 int /*<<< orphan*/  FUNC7 (struct ipoib_dev_priv*,char*,...) ; 
 int /*<<< orphan*/  jiffies ; 
 struct ipoib_dev_priv* FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 scalar_t__ FUNC12 (struct ipoib_dev_priv*) ; 
 int FUNC13 (struct ipoib_dev_priv*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ipoib_tx_buf*,void*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 scalar_t__ FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int) ; 
 int FUNC18 (struct sk_buff*) ; 
 int FUNC19 (struct sk_buff*) ; 
 scalar_t__ FUNC20 (int) ; 

void FUNC21(struct net_device *dev, struct sk_buff *skb,
		struct ipoib_ah *address, u32 qpn)
{
	struct ipoib_dev_priv *priv = FUNC8(dev);
	struct ipoib_tx_buf *tx_req;
	int hlen, rc;
	void *phead;

	if (FUNC15(skb)) {
		hlen = FUNC18(skb) + FUNC19(skb);
		phead = skb->data;
		if (FUNC20(!FUNC17(skb, hlen))) {
			FUNC7(priv, "linear data too small\n");
			++dev->stats.tx_dropped;
			++dev->stats.tx_errors;
			FUNC0(skb);
			return;
		}
	} else {
		if (FUNC20(skb->len > priv->mcast_mtu + IPOIB_ENCAP_LEN)) {
			FUNC7(priv, "packet len %d (> %d) too long to send, dropping\n",
				   skb->len, priv->mcast_mtu + IPOIB_ENCAP_LEN);
			++dev->stats.tx_dropped;
			++dev->stats.tx_errors;
			FUNC2(dev, skb, priv->mcast_mtu);
			return;
		}
		phead = NULL;
		hlen  = 0;
	}

	FUNC4(priv, "sending packet, length=%d address=%p qpn=0x%06x\n",
		       skb->len, address, qpn);

	/*
	 * We put the skb into the tx_ring _before_ we call post_send()
	 * because it's entirely possible that the completion handler will
	 * run before we execute anything after the post_send().  That
	 * means we have to make sure everything is properly recorded and
	 * our state is consistent before we call post_send().
	 */
	tx_req = &priv->tx_ring[priv->tx_head & (ipoib_sendq_size - 1)];
	tx_req->skb = skb;
	if (FUNC20(FUNC5(priv->ca, tx_req))) {
		++dev->stats.tx_errors;
		FUNC0(skb);
		return;
	}

	if (skb->ip_summed == CHECKSUM_PARTIAL)
		priv->tx_wr.send_flags |= IB_SEND_IP_CSUM;
	else
		priv->tx_wr.send_flags &= ~IB_SEND_IP_CSUM;

	if (++priv->tx_outstanding == ipoib_sendq_size) {
		FUNC3(priv, "TX ring full, stopping kernel net queue\n");
		if (FUNC1(priv->send_cq, IB_CQ_NEXT_COMP))
			FUNC7(priv, "request notify on send CQ failed\n");
		FUNC10(dev);
	}

	FUNC16(skb);
	FUNC14(skb);

	rc = FUNC13(priv, priv->tx_head & (ipoib_sendq_size - 1),
		       address->ah, qpn, tx_req, phead, hlen);
	if (FUNC20(rc)) {
		FUNC7(priv, "post_send failed, error %d\n", rc);
		++dev->stats.tx_errors;
		--priv->tx_outstanding;
		FUNC6(priv->ca, tx_req);
		FUNC0(skb);
		if (FUNC9(dev))
			FUNC11(dev);
	} else {
		dev->trans_start = jiffies;

		address->last_send = priv->tx_head;
		++priv->tx_head;
	}

	if (FUNC20(priv->tx_outstanding > MAX_SEND_CQE))
		while (FUNC12(priv))
			; /* nothing */
}