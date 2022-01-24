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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int flags; int mc_count; struct dev_mc_list* mc_list; scalar_t__ mem_start; } ;
struct lance_private {int /*<<< orphan*/  type; } ;
struct dev_mc_list {char* dmi_addr; struct dev_mc_list* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int IFF_ALLMULTI ; 
 int FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * filter ; 
 int* FUNC1 (int /*<<< orphan*/  volatile*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lance_private* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct lance_private *lp = FUNC2(dev);
	volatile u16 *ib = (volatile u16 *)dev->mem_start;
	struct dev_mc_list *dmi = dev->mc_list;
	char *addrs;
	int i;
	u32 crc;

	/* set all multicast bits */
	if (dev->flags & IFF_ALLMULTI) {
		*FUNC1(ib, filter[0], lp->type) = 0xffff;
		*FUNC1(ib, filter[1], lp->type) = 0xffff;
		*FUNC1(ib, filter[2], lp->type) = 0xffff;
		*FUNC1(ib, filter[3], lp->type) = 0xffff;
		return;
	}
	/* clear the multicast filter */
	*FUNC1(ib, filter[0], lp->type) = 0;
	*FUNC1(ib, filter[1], lp->type) = 0;
	*FUNC1(ib, filter[2], lp->type) = 0;
	*FUNC1(ib, filter[3], lp->type) = 0;

	/* Add addresses */
	for (i = 0; i < dev->mc_count; i++) {
		addrs = dmi->dmi_addr;
		dmi = dmi->next;

		/* multicast address? */
		if (!(*addrs & 1))
			continue;

		crc = FUNC0(ETH_ALEN, addrs);
		crc = crc >> 26;
		*FUNC1(ib, filter[crc >> 4], lp->type) |= 1 << (crc & 0xf);
	}
	return;
}