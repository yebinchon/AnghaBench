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
struct net_device {int /*<<< orphan*/  name; } ;
struct ehea_port {int /*<<< orphan*/  flags; int /*<<< orphan*/  port_lock; int /*<<< orphan*/  stats_work; int /*<<< orphan*/  reset_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  __EHEA_DISABLE_PORT_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct ehea_port* FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct ehea_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct ehea_port*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev)
{
	int ret;
	struct ehea_port *port = FUNC7(dev);

	if (FUNC8(port))
		FUNC4("disabling port %s", dev->name);

	FUNC11(__EHEA_DISABLE_PORT_RESET, &port->flags);
	FUNC1(&port->reset_task);
	FUNC0(&port->stats_work);
	FUNC5(&port->port_lock);
	FUNC9(dev);
	FUNC10(port);
	ret = FUNC3(dev);
	FUNC6(&port->port_lock);
	FUNC2(__EHEA_DISABLE_PORT_RESET, &port->flags);
	return ret;
}