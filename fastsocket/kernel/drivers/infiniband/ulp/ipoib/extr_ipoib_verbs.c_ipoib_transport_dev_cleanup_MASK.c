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
struct ipoib_dev_priv {int /*<<< orphan*/  pd; int /*<<< orphan*/  mr; int /*<<< orphan*/  recv_cq; int /*<<< orphan*/  send_cq; int /*<<< orphan*/  flags; int /*<<< orphan*/ * qp; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPOIB_PKEY_ASSIGNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipoib_dev_priv*,char*) ; 
 struct ipoib_dev_priv* FUNC7 (struct net_device*) ; 

void FUNC8(struct net_device *dev)
{
	struct ipoib_dev_priv *priv = FUNC7(dev);

	if (priv->qp) {
		if (FUNC4(priv->qp))
			FUNC6(priv, "ib_qp_destroy failed\n");

		priv->qp = NULL;
		FUNC0(IPOIB_PKEY_ASSIGNED, &priv->flags);
	}

	if (FUNC3(priv->send_cq))
		FUNC6(priv, "ib_cq_destroy (send) failed\n");

	if (FUNC3(priv->recv_cq))
		FUNC6(priv, "ib_cq_destroy (recv) failed\n");

	FUNC5(dev);

	if (FUNC2(priv->mr))
		FUNC6(priv, "ib_dereg_mr failed\n");

	if (FUNC1(priv->pd))
		FUNC6(priv, "ib_dealloc_pd failed\n");
}