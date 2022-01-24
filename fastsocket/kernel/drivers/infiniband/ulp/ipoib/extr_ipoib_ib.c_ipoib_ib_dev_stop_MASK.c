#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct net_device {int dummy; } ;
struct ipoib_tx_buf {int /*<<< orphan*/ * skb; } ;
struct ipoib_rx_buf {int /*<<< orphan*/ * skb; int /*<<< orphan*/  mapping; } ;
struct ipoib_dev_priv {int tx_head; int tx_tail; int /*<<< orphan*/  recv_cq; int /*<<< orphan*/  dead_ahs; int /*<<< orphan*/  ah_reap_task; int /*<<< orphan*/  flags; int /*<<< orphan*/  qp; int /*<<< orphan*/  poll_timer; struct ipoib_rx_buf* rx_ring; int /*<<< orphan*/  tx_outstanding; int /*<<< orphan*/  ca; struct ipoib_tx_buf* tx_ring; int /*<<< orphan*/  napi; } ;
struct ib_qp_attr {int /*<<< orphan*/  qp_state; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  IB_CQ_NEXT_COMP ; 
 int /*<<< orphan*/  IB_QPS_ERR ; 
 int /*<<< orphan*/  IB_QPS_RESET ; 
 int /*<<< orphan*/  IB_QP_STATE ; 
 int /*<<< orphan*/  IPOIB_FLAG_INITIALIZED ; 
 int /*<<< orphan*/  IPOIB_STOP_REAPER ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct ib_qp_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct ipoib_dev_priv*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct ipoib_tx_buf*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int ipoib_recvq_size ; 
 int ipoib_sendq_size ; 
 int /*<<< orphan*/  FUNC11 (struct ipoib_dev_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ipoib_dev_priv*,char*,...) ; 
 int /*<<< orphan*/  ipoib_workqueue ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct ipoib_dev_priv* FUNC16 (struct net_device*) ; 
 scalar_t__ FUNC17 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (unsigned long,unsigned long) ; 

int FUNC21(struct net_device *dev, int flush)
{
	struct ipoib_dev_priv *priv = FUNC16(dev);
	struct ib_qp_attr qp_attr;
	unsigned long begin;
	struct ipoib_tx_buf *tx_req;
	int i;

	if (FUNC19(IPOIB_FLAG_INITIALIZED, &priv->flags))
		FUNC15(&priv->napi);

	FUNC7(dev);

	/*
	 * Move our QP to the error state and then reinitialize in
	 * when all work requests have completed or have been flushed.
	 */
	qp_attr.qp_state = IB_QPS_ERR;
	if (FUNC5(priv->qp, &qp_attr, IB_QP_STATE))
		FUNC12(priv, "Failed to modify QP to ERROR state\n");

	/* Wait for all sends and receives to complete */
	begin = jiffies;

	while (priv->tx_head != priv->tx_tail || FUNC17(dev)) {
		if (FUNC20(jiffies, begin + 5 * HZ)) {
			FUNC12(priv, "timing out; %d sends %d receives not completed\n",
				   priv->tx_head - priv->tx_tail, FUNC17(dev));

			/*
			 * assume the HW is wedged and just free up
			 * all our pending work requests.
			 */
			while ((int) priv->tx_tail - (int) priv->tx_head < 0) {
				tx_req = &priv->tx_ring[priv->tx_tail &
							(ipoib_sendq_size - 1)];
				FUNC9(priv->ca, tx_req);
				FUNC3(tx_req->skb);
				++priv->tx_tail;
				--priv->tx_outstanding;
			}

			for (i = 0; i < ipoib_recvq_size; ++i) {
				struct ipoib_rx_buf *rx_req;

				rx_req = &priv->rx_ring[i];
				if (!rx_req->skb)
					continue;
				FUNC11(priv,
						      priv->rx_ring[i].mapping);
				FUNC3(rx_req->skb);
				rx_req->skb = NULL;
			}

			goto timeout;
		}

		FUNC10(dev);

		FUNC14(1);
	}

	FUNC8(priv, "All sends and receives done.\n");

timeout:
	FUNC2(&priv->poll_timer);
	qp_attr.qp_state = IB_QPS_RESET;
	if (FUNC5(priv->qp, &qp_attr, IB_QP_STATE))
		FUNC12(priv, "Failed to modify QP to RESET state\n");

	/* Wait for all AHs to be reaped */
	FUNC18(IPOIB_STOP_REAPER, &priv->flags);
	FUNC1(&priv->ah_reap_task);
	if (flush)
		FUNC4(ipoib_workqueue);

	begin = jiffies;

	while (!FUNC13(&priv->dead_ahs)) {
		FUNC0(dev);

		if (FUNC20(jiffies, begin + HZ)) {
			FUNC12(priv, "timing out; will leak address handles\n");
			break;
		}

		FUNC14(1);
	}

	FUNC6(priv->recv_cq, IB_CQ_NEXT_COMP);

	return 0;
}