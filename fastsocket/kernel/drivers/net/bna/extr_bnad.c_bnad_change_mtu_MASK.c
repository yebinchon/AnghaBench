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
struct bnad {int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 int BNAD_JUMBO_MTU ; 
 int EBUSY ; 
 int EINVAL ; 
 int ETH_FCS_LEN ; 
 int ETH_HLEN ; 
 int ETH_ZLEN ; 
 int VLAN_HLEN ; 
 int FUNC0 (struct bnad*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct bnad* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int
FUNC4(struct net_device *netdev, int new_mtu)
{
	int err, mtu = netdev->mtu;
	struct bnad *bnad = FUNC3(netdev);

	if (new_mtu + ETH_HLEN < ETH_ZLEN || new_mtu > BNAD_JUMBO_MTU)
		return -EINVAL;

	FUNC1(&bnad->conf_mutex);

	netdev->mtu = new_mtu;

	mtu = ETH_HLEN + VLAN_HLEN + new_mtu + ETH_FCS_LEN;
	err = FUNC0(bnad, mtu);
	if (err)
		err = -EBUSY;

	FUNC2(&bnad->conf_mutex);
	return err;
}