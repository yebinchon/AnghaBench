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
struct pcmcia_device {scalar_t__ priv; } ;
struct net_device {int dummy; } ;
struct hostap_interface {TYPE_1__* local; } ;
struct TYPE_2__ {scalar_t__ num_dev_open; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_EXTRA ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_info ; 
 struct hostap_interface* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int) ; 

__attribute__((used)) static int FUNC6(struct pcmcia_device *link)
{
	struct net_device *dev = (struct net_device *) link->priv;
	int dev_open = 0;
	struct hostap_interface *iface = NULL;

	if (!dev)
		return -ENODEV;

	iface = FUNC1(dev);

	FUNC0(DEBUG_EXTRA, "%s: CS_EVENT_PM_RESUME\n", dev_info);

	if (iface && iface->local)
		dev_open = iface->local->num_dev_open > 0;

	FUNC5(dev, 1);
	FUNC4(dev, dev_open ? 0 : 1);
	if (dev_open) {
		FUNC2(dev);
		FUNC3(dev);
	}

	return 0;
}