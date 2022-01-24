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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct enic_port_profile {int /*<<< orphan*/  vf_mac; } ;
struct enic {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,int,struct enic*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct enic*,int,struct enic_port_profile*,int*) ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int PORT_SELF_VF ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct enic* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  vnic_dev_set_mac_addr ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev, int vf, u8 *mac)
{
	struct enic *enic = FUNC6(netdev);
	struct enic_port_profile *pp;
	int err;

	FUNC1(enic, vf, pp, &err);
	if (err)
		return err;

	if (FUNC3(mac) || FUNC4(mac)) {
		if (vf == PORT_SELF_VF) {
			FUNC5(pp->vf_mac, mac, ETH_ALEN);
			return 0;
		} else {
			/*
			 * For sriov vf's set the mac in hw
			 */
			FUNC0(vf, err, enic,
				vnic_dev_set_mac_addr, mac);
			return FUNC2(err);
		}
	} else
		return -EINVAL;
}