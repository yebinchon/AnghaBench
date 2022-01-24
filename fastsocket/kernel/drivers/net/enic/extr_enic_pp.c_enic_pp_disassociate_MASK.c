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
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct enic_port_profile {int /*<<< orphan*/  mac_addr; } ;
struct enic {struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,struct enic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct enic*,int,struct enic_port_profile*,int*) ; 
 int PORT_SELF_VF ; 
 int FUNC2 (struct enic*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vnic_dev_del_addr ; 

__attribute__((used)) static int FUNC4(struct enic *enic, int vf,
	struct enic_port_profile *prev_pp, int *restore_pp)
{
	struct net_device *netdev = enic->netdev;
	struct enic_port_profile *pp;
	int err;

	FUNC1(enic, vf, pp, &err);
	if (err)
		return err;

	/* Deregister mac addresses */
	if (!FUNC3(pp->mac_addr))
		FUNC0(vf, err, enic, vnic_dev_del_addr,
			pp->mac_addr);
	else if (vf == PORT_SELF_VF && !FUNC3(netdev->dev_addr))
		FUNC0(vf, err, enic, vnic_dev_del_addr,
			netdev->dev_addr);

	return FUNC2(enic, vf);
}