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
struct ehea_port {int full_duplex; int /*<<< orphan*/  port_speed; TYPE_1__* netdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  EHEA_SPEED_AUTONEG ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct ehea_port*,int /*<<< orphan*/ ) ; 
 struct ehea_port* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev)
{
	struct ehea_port *port = FUNC2(dev);
	int ret;

	ret = FUNC1(port, EHEA_SPEED_AUTONEG);

	if (!ret)
		FUNC0("%s: Port speed succesfully set: %dMbps "
			  "%s Duplex",
			  port->netdev->name, port->port_speed,
			  port->full_duplex == 1 ? "Full" : "Half");
	return ret;
}