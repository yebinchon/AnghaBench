#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  size_t u16 ;
struct net_device {int dummy; } ;
struct ixgbe_fcoe_ddp {int len; int /*<<< orphan*/ * pool; int /*<<< orphan*/  udp; int /*<<< orphan*/  udl; int /*<<< orphan*/  sgc; scalar_t__ sgl; scalar_t__ err; } ;
struct ixgbe_fcoe {int /*<<< orphan*/  lock; struct ixgbe_fcoe_ddp* ddp; } ;
struct ixgbe_adapter {TYPE_1__* pdev; int /*<<< orphan*/  hw; struct ixgbe_fcoe fcoe; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  IXGBE_FCBUFF ; 
 int IXGBE_FCBUFF_VALID ; 
 int /*<<< orphan*/  IXGBE_FCDMARW ; 
 size_t IXGBE_FCDMARW_RE ; 
 size_t IXGBE_FCDMARW_WE ; 
 int /*<<< orphan*/  IXGBE_FCFLT ; 
 int /*<<< orphan*/  IXGBE_FCFLTRW ; 
 size_t IXGBE_FCFLTRW_WE ; 
 size_t IXGBE_FCOE_DDP_MAX ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_fcoe_ddp*) ; 
 struct ixgbe_adapter* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

int FUNC9(struct net_device *netdev, u16 xid)
{
	int len = 0;
	struct ixgbe_fcoe *fcoe;
	struct ixgbe_adapter *adapter;
	struct ixgbe_fcoe_ddp *ddp;
	u32 fcbuff;

	if (!netdev)
		goto out_ddp_put;

	if (xid >= IXGBE_FCOE_DDP_MAX)
		goto out_ddp_put;

	adapter = FUNC5(netdev);
	fcoe = &adapter->fcoe;
	ddp = &fcoe->ddp[xid];
	if (!ddp->udl)
		goto out_ddp_put;

	len = ddp->len;
	/* if there an error, force to invalidate ddp context */
	if (ddp->err) {
		FUNC6(&fcoe->lock);
		FUNC1(&adapter->hw, IXGBE_FCFLT, 0);
		FUNC1(&adapter->hw, IXGBE_FCFLTRW,
				(xid | IXGBE_FCFLTRW_WE));
		FUNC1(&adapter->hw, IXGBE_FCBUFF, 0);
		FUNC1(&adapter->hw, IXGBE_FCDMARW,
				(xid | IXGBE_FCDMARW_WE));

		/* guaranteed to be invalidated after 100us */
		FUNC1(&adapter->hw, IXGBE_FCDMARW,
				(xid | IXGBE_FCDMARW_RE));
		fcbuff = FUNC0(&adapter->hw, IXGBE_FCBUFF);
		FUNC7(&fcoe->lock);
		if (fcbuff & IXGBE_FCBUFF_VALID)
			FUNC8(100);
	}
	if (ddp->sgl)
		FUNC3(&adapter->pdev->dev, ddp->sgl, ddp->sgc,
			     DMA_FROM_DEVICE);
	if (ddp->pool) {
		FUNC2(ddp->pool, ddp->udl, ddp->udp);
		ddp->pool = NULL;
	}

	FUNC4(ddp);

out_ddp_put:
	return len;
}