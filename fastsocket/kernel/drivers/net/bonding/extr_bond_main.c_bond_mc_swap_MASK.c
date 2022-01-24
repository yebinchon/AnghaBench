#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct slave {int /*<<< orphan*/  dev; } ;
struct dev_mc_list {int /*<<< orphan*/  dmi_addrlen; int /*<<< orphan*/  dmi_addr; struct dev_mc_list* next; } ;
struct TYPE_3__ {int /*<<< orphan*/  mode; } ;
struct bonding {TYPE_2__* dev; TYPE_1__ params; } ;
struct TYPE_4__ {int flags; struct dev_mc_list* mc_list; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct bonding *bond, struct slave *new_active,
			 struct slave *old_active)
{
	struct dev_mc_list *dmi;

	if (!FUNC0(bond->params.mode))
		/* nothing to do -  mc list is already up-to-date on
		 * all slaves
		 */
		return;

	if (old_active) {
		if (bond->dev->flags & IFF_PROMISC)
			FUNC4(old_active->dev, -1);

		if (bond->dev->flags & IFF_ALLMULTI)
			FUNC3(old_active->dev, -1);

		for (dmi = bond->dev->mc_list; dmi; dmi = dmi->next)
			FUNC2(old_active->dev, dmi->dmi_addr,
				      dmi->dmi_addrlen, 0);
	}

	if (new_active) {
		/* FIXME: Signal errors upstream. */
		if (bond->dev->flags & IFF_PROMISC)
			FUNC4(new_active->dev, 1);

		if (bond->dev->flags & IFF_ALLMULTI)
			FUNC3(new_active->dev, 1);

		for (dmi = bond->dev->mc_list; dmi; dmi = dmi->next)
			FUNC1(new_active->dev, dmi->dmi_addr,
				   dmi->dmi_addrlen, 0);
	}
}