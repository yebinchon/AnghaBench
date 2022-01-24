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
typedef  int u8 ;
struct port {TYPE_1__* regs; } ;
struct net_device {int mc_count; int flags; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {int* dmi_addr; struct dev_mc_list* next; } ;
struct TYPE_2__ {int /*<<< orphan*/ * rx_control; int /*<<< orphan*/ * mcast_mask; int /*<<< orphan*/ * mcast_addr; } ;

/* Variables and functions */
 int DEFAULT_RX_CNTRL0 ; 
 int ETH_ALEN ; 
 int IFF_PROMISC ; 
 int RX_CNTRL0_ADDR_FLTR_EN ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 struct port* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct port *port = FUNC2(dev);
	struct dev_mc_list *mclist = dev->mc_list;
	u8 diffs[ETH_ALEN], *addr;
	int cnt = dev->mc_count, i;

	if ((dev->flags & IFF_PROMISC) || !mclist || !cnt) {
		FUNC0(DEFAULT_RX_CNTRL0 & ~RX_CNTRL0_ADDR_FLTR_EN,
			     &port->regs->rx_control[0]);
		return;
	}

	FUNC1(diffs, 0, ETH_ALEN);
	addr = mclist->dmi_addr; /* first MAC address */

	while (--cnt && (mclist = mclist->next))
		for (i = 0; i < ETH_ALEN; i++)
			diffs[i] |= addr[i] ^ mclist->dmi_addr[i];

	for (i = 0; i < ETH_ALEN; i++) {
		FUNC0(addr[i], &port->regs->mcast_addr[i]);
		FUNC0(~diffs[i], &port->regs->mcast_mask[i]);
	}

	FUNC0(DEFAULT_RX_CNTRL0 | RX_CNTRL0_ADDR_FLTR_EN,
		     &port->regs->rx_control[0]);
}