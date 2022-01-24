#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_2__ stats; } ;
struct ipoib_neigh {int /*<<< orphan*/ * cm; } ;
struct TYPE_7__ {int /*<<< orphan*/  reap_task; int /*<<< orphan*/  reap_list; } ;
struct ipoib_dev_priv {unsigned int tx_outstanding; int /*<<< orphan*/  lock; TYPE_3__ cm; int /*<<< orphan*/  flags; int /*<<< orphan*/  ca; } ;
struct ipoib_cm_tx_buf {TYPE_4__* skb; int /*<<< orphan*/  mapping; } ;
struct ipoib_cm_tx {int /*<<< orphan*/  flags; int /*<<< orphan*/  list; struct ipoib_neigh* neigh; int /*<<< orphan*/  tx_tail; struct ipoib_cm_tx_buf* tx_ring; } ;
struct ib_wc {unsigned int wr_id; int /*<<< orphan*/  vendor_err; int /*<<< orphan*/  status; TYPE_1__* qp; } ;
struct TYPE_8__ {scalar_t__ len; } ;
struct TYPE_5__ {struct ipoib_cm_tx* qp_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  IB_WC_SUCCESS ; 
 int /*<<< orphan*/  IB_WC_WR_FLUSH_ERR ; 
 int /*<<< orphan*/  IPOIB_FLAG_ADMIN_UP ; 
 int /*<<< orphan*/  IPOIB_FLAG_INITIALIZED ; 
 int /*<<< orphan*/  IPOIB_FLAG_OPER_UP ; 
 unsigned int IPOIB_OP_CM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_dev_priv*,char*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipoib_dev_priv*,char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ipoib_neigh*) ; 
 unsigned int ipoib_sendq_size ; 
 int /*<<< orphan*/  FUNC6 (struct ipoib_dev_priv*,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  ipoib_workqueue ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ipoib_dev_priv* FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int) ; 

void FUNC19(struct net_device *dev, struct ib_wc *wc)
{
	struct ipoib_dev_priv *priv = FUNC8(dev);
	struct ipoib_cm_tx *tx = wc->qp->qp_context;
	unsigned int wr_id = wc->wr_id & ~IPOIB_OP_CM;
	struct ipoib_cm_tx_buf *tx_req;
	unsigned long flags;

	FUNC4(priv, "cm send completion: id %d, status: %d\n",
		       wr_id, wc->status);

	if (FUNC18(wr_id >= ipoib_sendq_size)) {
		FUNC6(priv, "cm send completion event with wrid %d (> %d)\n",
			   wr_id, ipoib_sendq_size);
		return;
	}

	tx_req = &tx->tx_ring[wr_id];

	FUNC2(priv->ca, tx_req->mapping, tx_req->skb->len, DMA_TO_DEVICE);

	/* FIXME: is this right? Shouldn't we only increment on success? */
	++dev->stats.tx_packets;
	dev->stats.tx_bytes += tx_req->skb->len;

	FUNC1(tx_req->skb);

	FUNC10(dev);

	++tx->tx_tail;
	if (FUNC18(--priv->tx_outstanding == ipoib_sendq_size >> 1) &&
	    FUNC9(dev) &&
	    FUNC17(IPOIB_FLAG_ADMIN_UP, &priv->flags))
		FUNC12(dev);

	if (wc->status != IB_WC_SUCCESS &&
	    wc->status != IB_WC_WR_FLUSH_ERR) {
		struct ipoib_neigh *neigh;

		FUNC3(priv, "failed cm send event "
			   "(status=%d, wrid=%d vend_err %x)\n",
			   wc->status, wr_id, wc->vendor_err);

		FUNC14(&priv->lock, flags);
		neigh = tx->neigh;

		if (neigh) {
			neigh->cm = NULL;
			FUNC5(neigh);

			tx->neigh = NULL;
		}

		if (FUNC16(IPOIB_FLAG_INITIALIZED, &tx->flags)) {
			FUNC7(&tx->list, &priv->cm.reap_list);
			FUNC13(ipoib_workqueue, &priv->cm.reap_task);
		}

		FUNC0(IPOIB_FLAG_OPER_UP, &tx->flags);

		FUNC15(&priv->lock, flags);
	}

	FUNC11(dev);
}