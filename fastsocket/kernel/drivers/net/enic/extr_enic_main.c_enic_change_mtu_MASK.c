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
struct net_device {int mtu; } ;
struct enic {scalar_t__ port_mtu; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENIC_MAX_MTU ; 
 int ENIC_MIN_MTU ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct enic*) ; 
 scalar_t__ FUNC1 (struct enic*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct enic* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,scalar_t__,scalar_t__) ; 
 int FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev, int new_mtu)
{
	struct enic *enic = FUNC4(netdev);
	int running = FUNC6(netdev);

	if (new_mtu < ENIC_MIN_MTU || new_mtu > ENIC_MAX_MTU)
		return -EINVAL;

	if (FUNC0(enic) || FUNC1(enic))
		return -EOPNOTSUPP;

	if (running)
		FUNC3(netdev);

	netdev->mtu = new_mtu;

	if (netdev->mtu > enic->port_mtu)
		FUNC5(netdev,
			"interface MTU (%d) set higher than port MTU (%d)\n",
			netdev->mtu, enic->port_mtu);

	if (running)
		FUNC2(netdev);

	return 0;
}