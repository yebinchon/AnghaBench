#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_5__ {int flags; struct net_device* slave; } ;
typedef  TYPE_1__ isdn_net_local ;
struct TYPE_6__ {TYPE_1__* local; } ;
typedef  TYPE_2__ isdn_net_dev ;

/* Variables and functions */
 int ISDN_NET_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_2__* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 

int
FUNC3(char *name)
{
#ifdef CONFIG_ISDN_MPP
	isdn_net_dev *ndev;
	isdn_net_local *lp;
	struct net_device *sdev;

	if (!(ndev = isdn_net_findif(name)))
		return 1;
	lp = ndev->local;
	if (!(lp->flags & ISDN_NET_CONNECTED))
		return 5;

	sdev = lp->slave;
	while (sdev) {
		isdn_net_local *mlp = (isdn_net_local *) netdev_priv(sdev);
		if (!(mlp->flags & ISDN_NET_CONNECTED))
			break;
		sdev = mlp->slave;
	}
	if (!sdev)
		return 2;

	isdn_net_dial_req((isdn_net_local *) netdev_priv(sdev));
	return 0;
#else
	return -1;
#endif
}