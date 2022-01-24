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
struct net_device {int flags; } ;
struct enic {unsigned int flags; } ;

/* Variables and functions */
 scalar_t__ ENIC_MULTICAST_PERFECT_FILTERS ; 
 scalar_t__ ENIC_UNICAST_PERFECT_FILTERS ; 
 unsigned int IFF_ALLMULTI ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 unsigned int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (struct enic*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct enic*) ; 
 int /*<<< orphan*/  FUNC2 (struct enic*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 struct enic* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct net_device *netdev)
{
	struct enic *enic = FUNC4(netdev);
	int directed = 1;
	int multicast = (netdev->flags & IFF_MULTICAST) ? 1 : 0;
	int broadcast = (netdev->flags & IFF_BROADCAST) ? 1 : 0;
	int promisc = (netdev->flags & IFF_PROMISC) ||
		FUNC5(netdev) > ENIC_UNICAST_PERFECT_FILTERS;
	int allmulti = (netdev->flags & IFF_ALLMULTI) ||
		FUNC3(netdev) > ENIC_MULTICAST_PERFECT_FILTERS;
	unsigned int flags = netdev->flags |
		(allmulti ? IFF_ALLMULTI : 0) |
		(promisc ? IFF_PROMISC : 0);

	if (enic->flags != flags) {
		enic->flags = flags;
		FUNC0(enic, directed,
			multicast, broadcast, promisc, allmulti);
	}

	if (!promisc) {
		FUNC2(enic);
		if (!allmulti)
			FUNC1(enic);
	}
}