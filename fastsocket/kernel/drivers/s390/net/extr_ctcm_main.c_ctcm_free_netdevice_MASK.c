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
struct net_device {struct ctcm_priv* ml_priv; int /*<<< orphan*/  name; } ;
struct mpc_group {int /*<<< orphan*/  mpc_tasklet2; scalar_t__ rcvd_xid_skb; scalar_t__ xid_skb; int /*<<< orphan*/ * fsm; } ;
struct ctcm_priv {struct mpc_group* xid; int /*<<< orphan*/ * fsm; struct mpc_group* mpcg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CTCM_FUNTAIL ; 
 int /*<<< orphan*/  CTC_DBF_INFO ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct mpc_group*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	struct ctcm_priv *priv;
	struct mpc_group *grp;

	FUNC0(SETUP, CTC_DBF_INFO,
			"%s(%s)", CTCM_FUNTAIL, dev->name);
	priv = dev->ml_priv;
	if (priv) {
		grp = priv->mpcg;
		if (grp) {
			if (grp->fsm)
				FUNC4(grp->fsm);
			if (grp->xid_skb)
				FUNC1(grp->xid_skb);
			if (grp->rcvd_xid_skb)
				FUNC1(grp->rcvd_xid_skb);
			FUNC5(&grp->mpc_tasklet2);
			FUNC3(grp);
			priv->mpcg = NULL;
		}
		if (priv->fsm) {
			FUNC4(priv->fsm);
			priv->fsm = NULL;
		}
		FUNC3(priv->xid);
		priv->xid = NULL;
	/*
	 * Note: kfree(priv); is done in "opposite" function of
	 * allocator function probe_device which is remove_device.
	 */
	}
#ifdef MODULE
	free_netdev(dev);
#endif
}