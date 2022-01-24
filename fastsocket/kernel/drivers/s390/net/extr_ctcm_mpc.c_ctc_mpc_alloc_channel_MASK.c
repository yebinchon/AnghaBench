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
struct net_device {int /*<<< orphan*/  name; struct ctcm_priv* ml_priv; } ;
struct mpc_group {void (* allochanfunc ) (int,int) ;int port_num; int port_persist; int alloc_called; int send_qllc_disc; int allocchan_callback_retries; int group_max_buflen; int /*<<< orphan*/  fsm; int /*<<< orphan*/ * saved_xid2; int /*<<< orphan*/  outstanding_xid7_p2; int /*<<< orphan*/  outstanding_xid7; int /*<<< orphan*/  outstanding_xid2; int /*<<< orphan*/  timer; } ;
struct ctcm_priv {int /*<<< orphan*/  fsm; struct mpc_group* mpcg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CTCM_FUNTAIL ; 
 int /*<<< orphan*/  CTC_DBF_INFO ; 
 int /*<<< orphan*/  DEV_EVENT_START ; 
 int /*<<< orphan*/  MPCG_EVENT_INOP ; 
#define  MPCG_STATE_INOP 131 
#define  MPCG_STATE_READY 130 
#define  MPCG_STATE_RESET 129 
#define  MPCG_STATE_XID0IOWAIT 128 
 int /*<<< orphan*/  MPC_SETUP ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void FUNC7 (int,int) ; 

int FUNC8(int port_num, void (*callback)(int, int))
{
	struct net_device *dev;
	struct mpc_group *grp;
	struct ctcm_priv *priv;

	dev = FUNC2(port_num);
	if (dev == NULL)
		return 1;
	priv = dev->ml_priv;
	grp = priv->mpcg;

	grp->allochanfunc = callback;
	grp->port_num = port_num;
	grp->port_persist = 1;

	FUNC0(MPC_SETUP, CTC_DBF_INFO,
			"%s(%s): state=%s",
			CTCM_FUNTAIL, dev->name, FUNC6(grp->fsm));

	switch (FUNC5(grp->fsm)) {
	case MPCG_STATE_INOP:
		/* Group is in the process of terminating */
		grp->alloc_called = 1;
		break;
	case MPCG_STATE_RESET:
		/* MPC Group will transition to state		  */
		/* MPCG_STATE_XID2INITW iff the minimum number	  */
		/* of 1 read and 1 write channel have successfully*/
		/* activated					  */
		/*fsm_newstate(grp->fsm, MPCG_STATE_XID2INITW);*/
		if (callback)
			grp->send_qllc_disc = 1;
	case MPCG_STATE_XID0IOWAIT:
		FUNC3(&grp->timer);
		grp->outstanding_xid2 = 0;
		grp->outstanding_xid7 = 0;
		grp->outstanding_xid7_p2 = 0;
		grp->saved_xid2 = NULL;
		if (callback)
			FUNC1(dev);
		FUNC4(priv->fsm, DEV_EVENT_START, dev);
		break;
	case MPCG_STATE_READY:
		/* XID exchanges completed after PORT was activated */
		/* Link station already active			    */
		/* Maybe timing issue...retry callback		    */
		grp->allocchan_callback_retries++;
		if (grp->allocchan_callback_retries < 4) {
			if (grp->allochanfunc)
				grp->allochanfunc(grp->port_num,
						  grp->group_max_buflen);
		} else {
			/* there are problems...bail out	    */
			/* there may be a state mismatch so restart */
			FUNC4(grp->fsm, MPCG_EVENT_INOP, dev);
			grp->allocchan_callback_retries = 0;
		}
		break;
	}

	return 0;
}