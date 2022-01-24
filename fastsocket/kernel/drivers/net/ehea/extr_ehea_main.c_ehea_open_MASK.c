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
struct ehea_port {int /*<<< orphan*/  stats_work; int /*<<< orphan*/  port_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ehea_port* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct ehea_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct ehea_port*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	int ret;
	struct ehea_port *port = FUNC5(dev);

	FUNC3(&port->port_lock);

	if (FUNC6(port))
		FUNC0("enabling port %s", dev->name);

	ret = FUNC1(dev);
	if (!ret) {
		FUNC8(port);
		FUNC7(dev);
	}

	FUNC4(&port->port_lock);
	FUNC10(&port->stats_work,
			      FUNC9(FUNC2(1000)));

	return ret;
}