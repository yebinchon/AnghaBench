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
struct ib_sa_port {int dummy; } ;
struct ib_sa_device {int start_port; int end_port; TYPE_1__* port; int /*<<< orphan*/  event_handler; } ;
struct ib_device {scalar_t__ node_type; int phys_port_cnt; } ;
struct TYPE_2__ {int port_num; int /*<<< orphan*/  agent; int /*<<< orphan*/  update_task; int /*<<< orphan*/ * sm_ah; int /*<<< orphan*/  ah_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IB_LINK_LAYER_INFINIBAND ; 
 int /*<<< orphan*/  IB_QPT_GSI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ RDMA_NODE_IB_SWITCH ; 
 scalar_t__ RDMA_TRANSPORT_IB ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ib_sa_device*) ; 
 int /*<<< orphan*/  ib_sa_event ; 
 int /*<<< orphan*/  FUNC5 (struct ib_device*,int /*<<< orphan*/ *,struct ib_sa_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_sa_device*) ; 
 struct ib_sa_device* FUNC8 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (struct ib_device*,int) ; 
 int /*<<< orphan*/  recv_handler ; 
 int /*<<< orphan*/  sa_client ; 
 int /*<<< orphan*/  send_handler ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct ib_device *device)
{
	struct ib_sa_device *sa_dev;
	int s, e, i;

	if (FUNC9(device->node_type) != RDMA_TRANSPORT_IB)
		return;

	if (device->node_type == RDMA_NODE_IB_SWITCH)
		s = e = 0;
	else {
		s = 1;
		e = device->phys_port_cnt;
	}

	sa_dev = FUNC8(sizeof *sa_dev +
			 (e - s + 1) * sizeof (struct ib_sa_port),
			 GFP_KERNEL);
	if (!sa_dev)
		return;

	sa_dev->start_port = s;
	sa_dev->end_port   = e;

	for (i = 0; i <= e - s; ++i) {
		FUNC11(&sa_dev->port[i].ah_lock);
		if (FUNC10(device, i + 1) != IB_LINK_LAYER_INFINIBAND)
			continue;

		sa_dev->port[i].sm_ah    = NULL;
		sa_dev->port[i].port_num = i + s;

		sa_dev->port[i].agent =
			FUNC4(device, i + s, IB_QPT_GSI,
					      NULL, 0, send_handler,
					      recv_handler, sa_dev);
		if (FUNC2(sa_dev->port[i].agent))
			goto err;

		FUNC1(&sa_dev->port[i].update_task, update_sm_ah);
	}

	FUNC5(device, &sa_client, sa_dev);

	/*
	 * We register our event handler after everything is set up,
	 * and then update our cached info after the event handler is
	 * registered to avoid any problems if a port changes state
	 * during our initialization.
	 */

	FUNC0(&sa_dev->event_handler, device, ib_sa_event);
	if (FUNC3(&sa_dev->event_handler))
		goto err;

	for (i = 0; i <= e - s; ++i)
		if (FUNC10(device, i + 1) == IB_LINK_LAYER_INFINIBAND)
			FUNC12(&sa_dev->port[i].update_task);

	return;

err:
	while (--i >= 0)
		if (FUNC10(device, i + 1) == IB_LINK_LAYER_INFINIBAND)
			FUNC6(sa_dev->port[i].agent);

	FUNC7(sa_dev);

	return;
}