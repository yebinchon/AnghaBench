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
struct mcast_port {int port_num; int /*<<< orphan*/  refcount; int /*<<< orphan*/  comp; int /*<<< orphan*/  table; int /*<<< orphan*/  lock; struct mcast_device* dev; } ;
struct mcast_device {int start_port; int end_port; int /*<<< orphan*/  event_handler; struct ib_device* device; struct mcast_port* port; } ;
struct ib_device {scalar_t__ node_type; int phys_port_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IB_LINK_LAYER_INFINIBAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 scalar_t__ RDMA_NODE_IB_SWITCH ; 
 scalar_t__ RDMA_TRANSPORT_IB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_device*,int /*<<< orphan*/ *,struct mcast_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mcast_device*) ; 
 struct mcast_device* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcast_client ; 
 int /*<<< orphan*/  mcast_event_handler ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (struct ib_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct ib_device *device)
{
	struct mcast_device *dev;
	struct mcast_port *port;
	int i;
	int count = 0;

	if (FUNC7(device->node_type) != RDMA_TRANSPORT_IB)
		return;

	dev = FUNC6(sizeof *dev + device->phys_port_cnt * sizeof *port,
		      GFP_KERNEL);
	if (!dev)
		return;

	if (device->node_type == RDMA_NODE_IB_SWITCH)
		dev->start_port = dev->end_port = 0;
	else {
		dev->start_port = 1;
		dev->end_port = device->phys_port_cnt;
	}

	for (i = 0; i <= dev->end_port - dev->start_port; i++) {
		if (FUNC8(device, dev->start_port + i) !=
		    IB_LINK_LAYER_INFINIBAND)
			continue;
		port = &dev->port[i];
		port->dev = dev;
		port->port_num = dev->start_port + i;
		FUNC9(&port->lock);
		port->table = RB_ROOT;
		FUNC4(&port->comp);
		FUNC1(&port->refcount, 1);
		++count;
	}

	if (!count) {
		FUNC5(dev);
		return;
	}

	dev->device = device;
	FUNC3(device, &mcast_client, dev);

	FUNC0(&dev->event_handler, device, mcast_event_handler);
	FUNC2(&dev->event_handler);
}