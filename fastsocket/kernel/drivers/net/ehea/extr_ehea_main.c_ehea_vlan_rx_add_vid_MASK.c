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
struct net_device {int dummy; } ;
struct hcp_ehea_port_cb1 {scalar_t__* vlan_filter; } ;
struct ehea_port {int /*<<< orphan*/  logical_port_id; struct ehea_adapter* adapter; } ;
struct ehea_adapter {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  H_PORT_CB1 ; 
 int /*<<< orphan*/  H_PORT_CB1_ALL ; 
 scalar_t__ H_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hcp_ehea_port_cb1*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hcp_ehea_port_cb1*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct ehea_port* FUNC5 (struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev, unsigned short vid)
{
	struct ehea_port *port = FUNC5(dev);
	struct ehea_adapter *adapter = port->adapter;
	struct hcp_ehea_port_cb1 *cb1;
	int index;
	u64 hret;

	cb1 = (void *)FUNC4(GFP_KERNEL);
	if (!cb1) {
		FUNC0("no mem for cb1");
		goto out;
	}

	hret = FUNC2(adapter->handle, port->logical_port_id,
				      H_PORT_CB1, H_PORT_CB1_ALL, cb1);
	if (hret != H_SUCCESS) {
		FUNC0("query_ehea_port failed");
		goto out;
	}

	index = (vid / 64);
	cb1->vlan_filter[index] |= ((u64)(0x8000000000000000 >> (vid & 0x3F)));

	hret = FUNC1(adapter->handle, port->logical_port_id,
				       H_PORT_CB1, H_PORT_CB1_ALL, cb1);
	if (hret != H_SUCCESS)
		FUNC0("modify_ehea_port failed");
out:
	FUNC3((unsigned long)cb1);
	return;
}