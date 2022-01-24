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
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct lapbethdev {int /*<<< orphan*/  axdev; } ;

/* Variables and functions */
#define  NETDEV_DOWN 130 
#define  NETDEV_UNREGISTER 129 
#define  NETDEV_UP 128 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/ * FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC3 (struct lapbethdev*) ; 
 struct lapbethdev* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct notifier_block *this,
				unsigned long event, void *ptr)
{
	struct lapbethdev *lapbeth;
	struct net_device *dev = ptr;

	if (FUNC2(dev) != &init_net)
		return NOTIFY_DONE;

	if (!FUNC1(dev))
		return NOTIFY_DONE;

	switch (event) {
	case NETDEV_UP:
		/* New ethernet device -> new LAPB interface	 */
		if (FUNC4(dev) == NULL)
			FUNC5(dev);
		break;
	case NETDEV_DOWN:	
		/* ethernet device closed -> close LAPB interface */
		lapbeth = FUNC4(dev);
		if (lapbeth) 
			FUNC0(lapbeth->axdev);
		break;
	case NETDEV_UNREGISTER:
		/* ethernet device disappears -> remove LAPB interface */
		lapbeth = FUNC4(dev);
		if (lapbeth)
			FUNC3(lapbeth);
		break;
	}

	return NOTIFY_DONE;
}