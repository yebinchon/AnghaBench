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
struct ib_port_modify {int /*<<< orphan*/  clr_port_cap_mask; } ;
struct ib_device {int phys_port_cnt; } ;
struct cm_port {int /*<<< orphan*/  mad_agent; int /*<<< orphan*/  port_num; } ;
struct cm_device {int /*<<< orphan*/  device; struct cm_port** port; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  wq; int /*<<< orphan*/  device_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_PORT_CM_SUP ; 
 TYPE_1__ cm ; 
 int /*<<< orphan*/  cm_client ; 
 int /*<<< orphan*/  FUNC0 (struct cm_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct cm_device* FUNC3 (struct ib_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ib_port_modify*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cm_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct ib_device *ib_device)
{
	struct cm_device *cm_dev;
	struct cm_port *port;
	struct ib_port_modify port_modify = {
		.clr_port_cap_mask = IB_PORT_CM_SUP
	};
	unsigned long flags;
	int i;

	cm_dev = FUNC3(ib_device, &cm_client);
	if (!cm_dev)
		return;

	FUNC8(&cm.device_lock, flags);
	FUNC7(&cm_dev->list);
	FUNC9(&cm.device_lock, flags);

	for (i = 1; i <= ib_device->phys_port_cnt; i++) {
		port = cm_dev->port[i-1];
		FUNC4(ib_device, port->port_num, 0, &port_modify);
		FUNC5(port->mad_agent);
		FUNC2(cm.wq);
		FUNC0(port);
	}
	FUNC1(cm_dev->device);
	FUNC6(cm_dev);
}