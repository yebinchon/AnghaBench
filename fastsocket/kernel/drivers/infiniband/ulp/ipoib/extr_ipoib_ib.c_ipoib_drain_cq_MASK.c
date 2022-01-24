#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct ipoib_dev_priv {TYPE_1__* ibwc; int /*<<< orphan*/  recv_cq; } ;
struct TYPE_5__ {scalar_t__ status; int wr_id; } ;

/* Variables and functions */
 scalar_t__ IB_WC_SUCCESS ; 
 scalar_t__ IB_WC_WR_FLUSH_ERR ; 
 int IPOIB_NUM_WC ; 
 int IPOIB_OP_CM ; 
 int IPOIB_OP_RECV ; 
 int FUNC0 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct ipoib_dev_priv* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct ipoib_dev_priv*) ; 

void FUNC8(struct net_device *dev)
{
	struct ipoib_dev_priv *priv = FUNC6(dev);
	int i, n;

	/*
	 * We call completion handling routines that expect to be
	 * called from the BH-disabled NAPI poll context, so disable
	 * BHs here too.
	 */
	FUNC4();

	do {
		n = FUNC0(priv->recv_cq, IPOIB_NUM_WC, priv->ibwc);
		for (i = 0; i < n; ++i) {
			/*
			 * Convert any successful completions to flush
			 * errors to avoid passing packets up the
			 * stack after bringing the device down.
			 */
			if (priv->ibwc[i].status == IB_WC_SUCCESS)
				priv->ibwc[i].status = IB_WC_WR_FLUSH_ERR;

			if (priv->ibwc[i].wr_id & IPOIB_OP_RECV) {
				if (priv->ibwc[i].wr_id & IPOIB_OP_CM)
					FUNC1(dev, priv->ibwc + i);
				else
					FUNC3(dev, priv->ibwc + i);
			} else
				FUNC2(dev, priv->ibwc + i);
		}
	} while (n == IPOIB_NUM_WC);

	while (FUNC7(priv))
		; /* nothing */

	FUNC5();
}