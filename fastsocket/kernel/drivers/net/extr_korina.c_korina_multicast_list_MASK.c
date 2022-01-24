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
typedef  int u32 ;
typedef  int u16 ;
struct net_device {int flags; int mc_count; struct dev_mc_list* mc_list; } ;
struct korina_private {int /*<<< orphan*/  lock; TYPE_1__* eth_regs; } ;
struct dev_mc_list {char* dmi_addr; struct dev_mc_list* next; } ;
struct TYPE_2__ {int /*<<< orphan*/  etharc; int /*<<< orphan*/  ethhash1; int /*<<< orphan*/  ethhash0; } ;

/* Variables and functions */
 int ETH_ARC_AB ; 
 int ETH_ARC_AFM ; 
 int ETH_ARC_AM ; 
 int ETH_ARC_PRO ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int FUNC0 (int,char*) ; 
 struct korina_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct korina_private *lp = FUNC1(dev);
	unsigned long flags;
	struct dev_mc_list *dmi = dev->mc_list;
	u32 recognise = ETH_ARC_AB;	/* always accept broadcasts */
	int i;

	/* Set promiscuous mode */
	if (dev->flags & IFF_PROMISC)
		recognise |= ETH_ARC_PRO;

	else if ((dev->flags & IFF_ALLMULTI) || (dev->mc_count > 4))
		/* All multicast and broadcast */
		recognise |= ETH_ARC_AM;

	/* Build the hash table */
	if (dev->mc_count > 4) {
		u16 hash_table[4];
		u32 crc;

		for (i = 0; i < 4; i++)
			hash_table[i] = 0;

		for (i = 0; i < dev->mc_count; i++) {
			char *addrs = dmi->dmi_addr;

			dmi = dmi->next;

			if (!(*addrs & 1))
				continue;

			crc = FUNC0(6, addrs);
			crc >>= 26;
			hash_table[crc >> 4] |= 1 << (15 - (crc & 0xf));
		}
		/* Accept filtered multicast */
		recognise |= ETH_ARC_AFM;

		/* Fill the MAC hash tables with their values */
		FUNC4((u32)(hash_table[1] << 16 | hash_table[0]),
					&lp->eth_regs->ethhash0);
		FUNC4((u32)(hash_table[3] << 16 | hash_table[2]),
					&lp->eth_regs->ethhash1);
	}

	FUNC2(&lp->lock, flags);
	FUNC4(recognise, &lp->eth_regs->etharc);
	FUNC3(&lp->lock, flags);
}