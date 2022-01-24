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
struct vnet_mcast_entry {int hit; struct vnet_mcast_entry* next; int /*<<< orphan*/  addr; } ;
struct vnet {struct vnet_mcast_entry* mcast_list; } ;
struct net_device {struct dev_addr_list* mc_list; } ;
struct dev_addr_list {int /*<<< orphan*/  dmi_addr; struct dev_addr_list* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct vnet_mcast_entry* FUNC0 (struct vnet*,int /*<<< orphan*/ ) ; 
 struct vnet_mcast_entry* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct vnet *vp, struct net_device *dev)
{
	struct dev_addr_list *p;

	for (p = dev->mc_list; p; p = p->next) {
		struct vnet_mcast_entry *m;

		m = FUNC0(vp, p->dmi_addr);
		if (m) {
			m->hit = 1;
			continue;
		}

		if (!m) {
			m = FUNC1(sizeof(*m), GFP_ATOMIC);
			if (!m)
				continue;
			FUNC2(m->addr, p->dmi_addr, ETH_ALEN);
			m->hit = 1;

			m->next = vp->mcast_list;
			vp->mcast_list = m;
		}
	}
}