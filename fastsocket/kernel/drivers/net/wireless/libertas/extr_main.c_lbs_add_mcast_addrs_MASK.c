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
struct net_device {int flags; int /*<<< orphan*/  name; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {int /*<<< orphan*/  dmi_addr; struct dev_mc_list* next; } ;
struct cmd_ds_mac_multicast_adr {int /*<<< orphan*/ * maclist; } ;

/* Variables and functions */
 int EOVERFLOW ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int IFF_MULTICAST ; 
 int IFF_UP ; 
 int MRVDRV_MAX_MULTICAST_LIST_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct cmd_ds_mac_multicast_adr *cmd,
			       struct net_device *dev, int nr_addrs)
{
	int i = nr_addrs;
	struct dev_mc_list *mc_list;

	if ((dev->flags & (IFF_UP|IFF_MULTICAST)) != (IFF_UP|IFF_MULTICAST))
		return nr_addrs;

	FUNC3(dev);
	for (mc_list = dev->mc_list; mc_list; mc_list = mc_list->next) {
		if (FUNC1(cmd->maclist, nr_addrs, mc_list->dmi_addr)) {
			FUNC0("mcast address %s:%pM skipped\n", dev->name,
				    mc_list->dmi_addr);
			continue;
		}

		if (i == MRVDRV_MAX_MULTICAST_LIST_SIZE)
			break;
		FUNC2(&cmd->maclist[6*i], mc_list->dmi_addr, ETH_ALEN);
		FUNC0("mcast address %s:%pM added to filter\n", dev->name,
			    mc_list->dmi_addr);
		i++;
	}
	FUNC4(dev);
	if (mc_list)
		return -EOVERFLOW;

	return i;
}