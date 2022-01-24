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
struct net_device {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  name; struct ctcm_priv* ml_priv; } ;
struct mpc_group {int /*<<< orphan*/  fsm; scalar_t__ send_qllc_disc; scalar_t__ port_persist; int /*<<< orphan*/ * estconnfunc; int /*<<< orphan*/ * allochanfunc; int /*<<< orphan*/  timer; scalar_t__ channels_terminating; } ;
struct ctcm_priv {int /*<<< orphan*/  restart_timer; struct mpc_group* mpcg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CTCM_FUNTAIL ; 
 int /*<<< orphan*/  CTC_DBF_DEBUG ; 
 int /*<<< orphan*/  MPCG_EVENT_INOP ; 
 int /*<<< orphan*/  MPC_SETUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

void FUNC6(int port_num)
{
	struct net_device *dev;
	struct ctcm_priv *priv;
	struct mpc_group *grp;

	dev = FUNC3(port_num);
	if (dev == NULL)
		return;
	priv = dev->ml_priv;
	grp = priv->mpcg;

	FUNC0(MPC_SETUP, CTC_DBF_DEBUG,
			"%s: %s: refcount = %d\n",
			CTCM_FUNTAIL, dev->name, FUNC1(&dev->refcnt));

	FUNC4(&priv->restart_timer);
	grp->channels_terminating = 0;
	FUNC4(&grp->timer);
	grp->allochanfunc = NULL;
	grp->estconnfunc = NULL;
	grp->port_persist = 0;
	grp->send_qllc_disc = 0;
	FUNC5(grp->fsm, MPCG_EVENT_INOP, dev);

	FUNC2(dev);
	return;
}