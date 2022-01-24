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
struct net_device {int dummy; } ;
struct adapter {struct net_device** port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 

void FUNC5(struct adapter *adapter, int port_id, int link_stat)
{
	struct net_device *dev = adapter->port[port_id];

	/* Skip changes from disabled ports. */
	if (FUNC4(dev) && link_stat != FUNC2(dev)) {
		if (link_stat)
			FUNC3(dev);
		else
			FUNC1(dev);

		FUNC0(dev);
	}
}