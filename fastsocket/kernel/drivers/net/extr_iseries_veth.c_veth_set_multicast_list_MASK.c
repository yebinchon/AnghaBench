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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct veth_port {int promiscuous; size_t num_mcast; int /*<<< orphan*/  mcast_gate; int /*<<< orphan*/ * mcast_addr; } ;
struct net_device {int flags; scalar_t__ mc_count; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {int* dmi_addr; struct dev_mc_list* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 scalar_t__ VETH_MAX_MCAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 struct veth_port* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct veth_port *port = FUNC1(dev);
	unsigned long flags;

	FUNC2(&port->mcast_gate, flags);

	if ((dev->flags & IFF_PROMISC) || (dev->flags & IFF_ALLMULTI) ||
			(dev->mc_count > VETH_MAX_MCAST)) {
		port->promiscuous = 1;
	} else {
		struct dev_mc_list *dmi = dev->mc_list;
		int i;

		port->promiscuous = 0;

		/* Update table */
		port->num_mcast = 0;

		for (i = 0; i < dev->mc_count; i++) {
			u8 *addr = dmi->dmi_addr;
			u64 xaddr = 0;

			if (addr[0] & 0x01) {/* multicast address? */
				FUNC0(&xaddr, addr, ETH_ALEN);
				port->mcast_addr[port->num_mcast] = xaddr;
				port->num_mcast++;
			}
			dmi = dmi->next;
		}
	}

	FUNC3(&port->mcast_gate, flags);
}