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
struct net_device {int dummy; } ;
struct TYPE_8__ {int wr_id; } ;
struct TYPE_7__ {int num_frags; TYPE_2__* srq_ring; TYPE_4__ rx_wr; int /*<<< orphan*/  srq; TYPE_1__* rx_sge; } ;
struct ipoib_dev_priv {TYPE_3__ cm; } ;
struct ib_recv_wr {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * skb; int /*<<< orphan*/ * mapping; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int IPOIB_OP_CM ; 
 int IPOIB_OP_RECV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,struct ib_recv_wr**) ; 
 int /*<<< orphan*/  FUNC2 (struct ipoib_dev_priv*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_dev_priv*,char*,int,int) ; 
 struct ipoib_dev_priv* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, int id)
{
	struct ipoib_dev_priv *priv = FUNC4(dev);
	struct ib_recv_wr *bad_wr;
	int i, ret;

	priv->cm.rx_wr.wr_id = id | IPOIB_OP_CM | IPOIB_OP_RECV;

	for (i = 0; i < priv->cm.num_frags; ++i)
		priv->cm.rx_sge[i].addr = priv->cm.srq_ring[id].mapping[i];

	ret = FUNC1(priv->cm.srq, &priv->cm.rx_wr, &bad_wr);
	if (FUNC5(ret)) {
		FUNC3(priv, "post srq failed for buf %d (%d)\n", id, ret);
		FUNC2(priv, priv->cm.num_frags - 1,
				      priv->cm.srq_ring[id].mapping);
		FUNC0(priv->cm.srq_ring[id].skb);
		priv->cm.srq_ring[id].skb = NULL;
	}

	return ret;
}