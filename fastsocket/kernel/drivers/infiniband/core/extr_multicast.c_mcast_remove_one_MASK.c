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
struct mcast_port {int /*<<< orphan*/  comp; } ;
struct mcast_device {int end_port; int start_port; struct mcast_port* port; int /*<<< orphan*/  event_handler; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ IB_LINK_LAYER_INFINIBAND ; 
 int /*<<< orphan*/  FUNC0 (struct mcast_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mcast_device* FUNC2 (struct ib_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mcast_device*) ; 
 int /*<<< orphan*/  mcast_client ; 
 int /*<<< orphan*/  mcast_wq ; 
 scalar_t__ FUNC5 (struct ib_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ib_device *device)
{
	struct mcast_device *dev;
	struct mcast_port *port;
	int i;

	dev = FUNC2(device, &mcast_client);
	if (!dev)
		return;

	FUNC3(&dev->event_handler);
	FUNC1(mcast_wq);

	for (i = 0; i <= dev->end_port - dev->start_port; i++) {
		if (FUNC5(device, dev->start_port + i) ==
		    IB_LINK_LAYER_INFINIBAND) {
			port = &dev->port[i];
			FUNC0(port);
			FUNC6(&port->comp);
		}
	}

	FUNC4(dev);
}