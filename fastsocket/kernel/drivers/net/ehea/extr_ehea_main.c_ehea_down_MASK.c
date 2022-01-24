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
struct ehea_port {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ EHEA_PORT_DOWN ; 
 int /*<<< orphan*/  H_DEREG_BCMC ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ehea_port*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ehea_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct ehea_port* FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	int ret;
	struct ehea_port *port = FUNC8(dev);

	if (port->state == EHEA_PORT_DOWN)
		return 0;

	FUNC3(dev);
	FUNC0(dev, 0);
	FUNC1(port, H_DEREG_BCMC);

	FUNC4(dev);

	port->state = EHEA_PORT_DOWN;

	FUNC6();

	ret = FUNC2(port);
	if (ret)
		FUNC5("Failed freeing resources for %s. ret=%i",
			  dev->name, ret);

	FUNC7();

	return ret;
}