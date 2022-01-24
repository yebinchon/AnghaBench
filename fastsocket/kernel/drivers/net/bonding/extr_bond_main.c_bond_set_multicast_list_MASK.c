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
struct net_device {int flags; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {int /*<<< orphan*/  dmi_addrlen; int /*<<< orphan*/  dmi_addr; struct dev_mc_list* next; } ;
struct bonding {int flags; int /*<<< orphan*/  lock; struct dev_mc_list* mc_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (struct bonding*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bonding*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dev_mc_list*,struct bonding*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC4 (struct dev_mc_list*,struct dev_mc_list*) ; 
 int /*<<< orphan*/  FUNC5 (struct bonding*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bonding*,int) ; 
 struct bonding* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct net_device *bond_dev)
{
	struct bonding *bond = FUNC7(bond_dev);
	struct dev_mc_list *dmi;

	/*
	 * Do promisc before checking multicast_mode
	 */
	if ((bond_dev->flags & IFF_PROMISC) && !(bond->flags & IFF_PROMISC))
		/*
		 * FIXME: Need to handle the error when one of the multi-slaves
		 * encounters error.
		 */
		FUNC6(bond, 1);


	if (!(bond_dev->flags & IFF_PROMISC) && (bond->flags & IFF_PROMISC))
		FUNC6(bond, -1);


	/* set allmulti flag to slaves */
	if ((bond_dev->flags & IFF_ALLMULTI) && !(bond->flags & IFF_ALLMULTI))
		/*
		 * FIXME: Need to handle the error when one of the multi-slaves
		 * encounters error.
		 */
		FUNC5(bond, 1);


	if (!(bond_dev->flags & IFF_ALLMULTI) && (bond->flags & IFF_ALLMULTI))
		FUNC5(bond, -1);


	FUNC8(&bond->lock);

	bond->flags = bond_dev->flags;

	/* looking for addresses to add to slaves' mc list */
	for (dmi = bond_dev->mc_list; dmi; dmi = dmi->next) {
		if (!FUNC4(dmi, bond->mc_list))
			FUNC0(bond, dmi->dmi_addr, dmi->dmi_addrlen);
	}

	/* looking for addresses to delete from slaves' list */
	for (dmi = bond->mc_list; dmi; dmi = dmi->next) {
		if (!FUNC4(dmi, bond_dev->mc_list))
			FUNC1(bond, dmi->dmi_addr, dmi->dmi_addrlen);
	}

	/* save master's multicast list */
	FUNC3(bond);
	FUNC2(bond_dev->mc_list, bond, GFP_ATOMIC);

	FUNC9(&bond->lock);
}