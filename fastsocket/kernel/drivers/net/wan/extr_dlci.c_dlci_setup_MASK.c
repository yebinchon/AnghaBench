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
struct net_device {int hard_header_len; int addr_len; int /*<<< orphan*/  type; int /*<<< orphan*/  destructor; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/ * header_ops; scalar_t__ flags; } ;
struct frhdr {int dummy; } ;
struct dlci_local {int /*<<< orphan*/  receive; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_DLCI ; 
 int /*<<< orphan*/  dlci_header_ops ; 
 int /*<<< orphan*/  dlci_netdev_ops ; 
 int /*<<< orphan*/  dlci_receive ; 
 int /*<<< orphan*/  free_netdev ; 
 struct dlci_local* FUNC0 (struct net_device*) ; 

__attribute__((used)) static void FUNC1(struct net_device *dev)
{
	struct dlci_local *dlp = FUNC0(dev);

	dev->flags		= 0;
	dev->header_ops		= &dlci_header_ops;
	dev->netdev_ops		= &dlci_netdev_ops;
	dev->destructor		= free_netdev;

	dlp->receive		= dlci_receive;

	dev->type		= ARPHRD_DLCI;
	dev->hard_header_len	= sizeof(struct frhdr);
	dev->addr_len		= sizeof(short);

}