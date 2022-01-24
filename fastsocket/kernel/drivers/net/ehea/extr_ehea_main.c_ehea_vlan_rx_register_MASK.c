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
typedef  scalar_t__ u64 ;
struct vlan_group {int dummy; } ;
struct net_device {int dummy; } ;
struct hcp_ehea_port_cb1 {int dummy; } ;
struct ehea_port {int /*<<< orphan*/  logical_port_id; struct vlan_group* vgrp; struct ehea_adapter* adapter; } ;
struct ehea_adapter {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  H_PORT_CB1 ; 
 int /*<<< orphan*/  H_PORT_CB1_ALL ; 
 scalar_t__ H_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hcp_ehea_port_cb1*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct ehea_port* FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev,
				struct vlan_group *grp)
{
	struct ehea_port *port = FUNC4(dev);
	struct ehea_adapter *adapter = port->adapter;
	struct hcp_ehea_port_cb1 *cb1;
	u64 hret;

	port->vgrp = grp;
	
	cb1 = (void *)FUNC3(GFP_KERNEL);
	if (!cb1) {
		FUNC0("no mem for cb1");
		goto out;
	}

	hret = FUNC1(adapter->handle, port->logical_port_id,
				       H_PORT_CB1, H_PORT_CB1_ALL, cb1);
	if (hret != H_SUCCESS)
		FUNC0("modify_ehea_port failed");

	FUNC2((unsigned long)cb1);
out:
	return;
}