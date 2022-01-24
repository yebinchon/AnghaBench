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
struct net_device {int flags; int mc_count; struct dev_mc_list* mc_list; } ;
struct jme_adapter {int reg_rxmcs; int /*<<< orphan*/  rxmcs_lock; } ;
struct dev_mc_list {int /*<<< orphan*/  dmi_addr; struct dev_mc_list* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int IFF_ALLMULTI ; 
 int IFF_MULTICAST ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  JME_RXMCHT_HI ; 
 int /*<<< orphan*/  JME_RXMCHT_LO ; 
 int /*<<< orphan*/  JME_RXMCS ; 
 int RXMCS_ALLFRAME ; 
 int RXMCS_ALLMULFRAME ; 
 int RXMCS_BRDFRAME ; 
 int RXMCS_MULFILTERED ; 
 int RXMCS_MULFRAME ; 
 int RXMCS_UNIFRAME ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct jme_adapter*,int /*<<< orphan*/ ,int) ; 
 struct jme_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6(struct net_device *netdev)
{
	struct jme_adapter *jme = FUNC2(netdev);
	u32 mc_hash[2] = {};
	int i;

	FUNC3(&jme->rxmcs_lock);

	jme->reg_rxmcs |= RXMCS_BRDFRAME | RXMCS_UNIFRAME;

	if (netdev->flags & IFF_PROMISC) {
		jme->reg_rxmcs |= RXMCS_ALLFRAME;
	} else if (netdev->flags & IFF_ALLMULTI) {
		jme->reg_rxmcs |= RXMCS_ALLMULFRAME;
	} else if (netdev->flags & IFF_MULTICAST) {
		struct dev_mc_list *mclist;
		int bit_nr;

		jme->reg_rxmcs |= RXMCS_MULFRAME | RXMCS_MULFILTERED;
		for (i = 0, mclist = netdev->mc_list;
			mclist && i < netdev->mc_count;
			++i, mclist = mclist->next) {

			bit_nr = FUNC0(ETH_ALEN, mclist->dmi_addr) & 0x3F;
			mc_hash[bit_nr >> 5] |= 1 << (bit_nr & 0x1F);
		}

		FUNC1(jme, JME_RXMCHT_LO, mc_hash[0]);
		FUNC1(jme, JME_RXMCHT_HI, mc_hash[1]);
	}

	FUNC5();
	FUNC1(jme, JME_RXMCS, jme->reg_rxmcs);

	FUNC4(&jme->rxmcs_lock);
}