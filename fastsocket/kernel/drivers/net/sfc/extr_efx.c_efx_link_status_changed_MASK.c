#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct efx_link_state {scalar_t__ up; scalar_t__ fd; int /*<<< orphan*/  speed; } ;
struct efx_nic {TYPE_1__* net_dev; scalar_t__ promiscuous; int /*<<< orphan*/  n_link_state_changes; struct efx_link_state link_state; } ;
struct TYPE_6__ {int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,int /*<<< orphan*/ ,TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5(struct efx_nic *efx)
{
	struct efx_link_state *link_state = &efx->link_state;

	/* SFC Bug 5356: A net_dev notifier is registered, so we must ensure
	 * that no events are triggered between unregister_netdev() and the
	 * driver unloading. A more general condition is that NETDEV_CHANGE
	 * can only be generated between NETDEV_UP and NETDEV_DOWN */
	if (!FUNC4(efx->net_dev))
		return;

	if (link_state->up != FUNC1(efx->net_dev)) {
		efx->n_link_state_changes++;

		if (link_state->up)
			FUNC2(efx->net_dev);
		else
			FUNC0(efx->net_dev);
	}

	/* Status message for kernel log */
	if (link_state->up)
		FUNC3(efx, link, efx->net_dev,
			   "link up at %uMbps %s-duplex (MTU %d)%s\n",
			   link_state->speed, link_state->fd ? "full" : "half",
			   efx->net_dev->mtu,
			   (efx->promiscuous ? " [PROMISC]" : ""));
	else
		FUNC3(efx, link, efx->net_dev, "link down\n");
}