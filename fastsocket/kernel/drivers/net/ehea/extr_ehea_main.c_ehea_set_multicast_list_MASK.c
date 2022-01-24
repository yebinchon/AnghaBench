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
struct net_device {int flags; int mc_count; struct dev_mc_list* mc_list; } ;
struct ehea_port {TYPE_1__* adapter; } ;
struct dev_mc_list {int /*<<< orphan*/  dmi_addr; struct dev_mc_list* next; } ;
struct TYPE_2__ {int max_mc_mac; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (struct ehea_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct ehea_port* FUNC6 (struct net_device*) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
	struct ehea_port *port = FUNC6(dev);
	struct dev_mc_list *k_mcl_entry;
	int ret, i;

	FUNC4(dev, !!(dev->flags & IFF_PROMISC));

	if (dev->flags & IFF_ALLMULTI) {
		FUNC1(dev, 1);
		goto out;
	}
	FUNC1(dev, 0);

	if (dev->mc_count) {
		ret = FUNC2(dev);
		if (ret) {
			/* Dropping the current multicast list failed.
			 * Enabling ALL_MULTI is the best we can do.
			 */
			FUNC1(dev, 1);
		}

		if (dev->mc_count > port->adapter->max_mc_mac) {
			FUNC3("Mcast registration limit reached (0x%llx). "
				  "Use ALLMULTI!",
				  port->adapter->max_mc_mac);
			goto out;
		}

		for (i = 0, k_mcl_entry = dev->mc_list; i < dev->mc_count; i++,
			     k_mcl_entry = k_mcl_entry->next)
			FUNC0(port, k_mcl_entry->dmi_addr);

	}
out:
	FUNC5();
	return;
}