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
struct ipoib_dev_priv {int /*<<< orphan*/  qp; int /*<<< orphan*/  pkey_index; int /*<<< orphan*/  port; int /*<<< orphan*/  flags; } ;
struct ib_qp_attr {int /*<<< orphan*/  qp_state; scalar_t__ sq_psn; int /*<<< orphan*/  pkey_index; int /*<<< orphan*/  port_num; scalar_t__ qkey; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_QPS_INIT ; 
 int /*<<< orphan*/  IB_QPS_RESET ; 
 int /*<<< orphan*/  IB_QPS_RTR ; 
 int /*<<< orphan*/  IB_QPS_RTS ; 
 int IB_QP_PKEY_INDEX ; 
 int IB_QP_PORT ; 
 int IB_QP_QKEY ; 
 int IB_QP_SQ_PSN ; 
 int IB_QP_STATE ; 
 int /*<<< orphan*/  IPOIB_PKEY_ASSIGNED ; 
 int FUNC0 (int /*<<< orphan*/ ,struct ib_qp_attr*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ipoib_dev_priv*,char*,...) ; 
 struct ipoib_dev_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(struct net_device *dev)
{
	struct ipoib_dev_priv *priv = FUNC2(dev);
	int ret;
	struct ib_qp_attr qp_attr;
	int attr_mask;

	if (!FUNC3(IPOIB_PKEY_ASSIGNED, &priv->flags))
		return -1;

	qp_attr.qp_state = IB_QPS_INIT;
	qp_attr.qkey = 0;
	qp_attr.port_num = priv->port;
	qp_attr.pkey_index = priv->pkey_index;
	attr_mask =
	    IB_QP_QKEY |
	    IB_QP_PORT |
	    IB_QP_PKEY_INDEX |
	    IB_QP_STATE;
	ret = FUNC0(priv->qp, &qp_attr, attr_mask);
	if (ret) {
		FUNC1(priv, "failed to modify QP to init, ret = %d\n", ret);
		goto out_fail;
	}

	qp_attr.qp_state = IB_QPS_RTR;
	/* Can't set this in a INIT->RTR transition */
	attr_mask &= ~IB_QP_PORT;
	ret = FUNC0(priv->qp, &qp_attr, attr_mask);
	if (ret) {
		FUNC1(priv, "failed to modify QP to RTR, ret = %d\n", ret);
		goto out_fail;
	}

	qp_attr.qp_state = IB_QPS_RTS;
	qp_attr.sq_psn = 0;
	attr_mask |= IB_QP_SQ_PSN;
	attr_mask &= ~IB_QP_PKEY_INDEX;
	ret = FUNC0(priv->qp, &qp_attr, attr_mask);
	if (ret) {
		FUNC1(priv, "failed to modify QP to RTS, ret = %d\n", ret);
		goto out_fail;
	}

	return 0;

out_fail:
	qp_attr.qp_state = IB_QPS_RESET;
	if (FUNC0(priv->qp, &qp_attr, IB_QP_STATE))
		FUNC1(priv, "Failed to modify QP to RESET state\n");

	return ret;
}