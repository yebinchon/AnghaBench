#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct ixgbe_adapter {int num_vfs; int vf_rate_link_speed; TYPE_1__* vfinfo; int /*<<< orphan*/  link_up; } ;
struct TYPE_2__ {int tx_rate; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_adapter*,int) ; 
 struct ixgbe_adapter* FUNC2 (struct net_device*) ; 

int FUNC3(struct net_device *netdev, int vf, int tx_rate)
{
	struct ixgbe_adapter *adapter = FUNC2(netdev);
	int link_speed;

	/* verify VF is active */
	if (vf >= adapter->num_vfs)
		return -EINVAL;

	/* verify link is up */
	if (!adapter->link_up)
		return -EINVAL;

	/* verify we are linked at 10Gbps */
	link_speed = FUNC0(adapter);
	if (link_speed != 10000)
		return -EINVAL;

	/* rate limit cannot be less than 10Mbs or greater than link speed */
	if (tx_rate && ((tx_rate <= 10) || (tx_rate > link_speed)))
		return -EINVAL;

	/* store values */
	adapter->vf_rate_link_speed = link_speed;
	adapter->vfinfo[vf].tx_rate = tx_rate;

	/* update hardware configuration */
	FUNC1(adapter, vf);

	return 0;
}