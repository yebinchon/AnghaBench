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
struct nic {int /*<<< orphan*/  flags; int /*<<< orphan*/  netdev; } ;
struct net_device {int flags; } ;

/* Variables and functions */
 scalar_t__ E100_MAX_MULTICAST_ADDRS ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  e100_configure ; 
 int /*<<< orphan*/  FUNC0 (struct nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  e100_multi ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  multicast_all ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 struct nic* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  promiscuous ; 

__attribute__((used)) static void FUNC4(struct net_device *netdev)
{
	struct nic *nic = FUNC2(netdev);

	FUNC3(nic, hw, KERN_DEBUG, nic->netdev,
		     "mc_count=%d, flags=0x%04X\n",
		     FUNC1(netdev), netdev->flags);

	if (netdev->flags & IFF_PROMISC)
		nic->flags |= promiscuous;
	else
		nic->flags &= ~promiscuous;

	if (netdev->flags & IFF_ALLMULTI ||
		FUNC1(netdev) > E100_MAX_MULTICAST_ADDRS)
		nic->flags |= multicast_all;
	else
		nic->flags &= ~multicast_all;

	FUNC0(nic, NULL, e100_configure);
	FUNC0(nic, NULL, e100_multi);
}