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
typedef  int /*<<< orphan*/  u_long ;
typedef  int u_char ;
struct net_device {unsigned int base_addr; int flags; scalar_t__ mc_count; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {int /*<<< orphan*/  dmi_addr; struct dev_mc_list* next; } ;
typedef  int /*<<< orphan*/  mc_filter ;

/* Variables and functions */
 int CONFIG0_RST ; 
 int CONFIG0_RST_1 ; 
 scalar_t__ CONFIG_0 ; 
 scalar_t__ CONFIG_1 ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 scalar_t__ MAR_ADR ; 
 scalar_t__ MC_FILTERBREAK ; 
 scalar_t__ RX_MODE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 scalar_t__ sram_config ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
    unsigned int ioaddr = dev->base_addr;
    u_char mc_filter[8];		 /* Multicast hash filter */
    u_long flags;
    int i;
    
    int saved_bank;
    int saved_config_0 = FUNC1(ioaddr + CONFIG_0);
     
    FUNC3(flags); 

    /* Disable Tx and Rx */
    if (sram_config == 0) 
	FUNC5(CONFIG0_RST, ioaddr + CONFIG_0);
    else
	FUNC5(CONFIG0_RST_1, ioaddr + CONFIG_0);

    if (dev->flags & IFF_PROMISC) {
	FUNC4(mc_filter, 0xff, sizeof(mc_filter));
	FUNC5(3, ioaddr + RX_MODE);	/* Enable promiscuous mode */
    } else if (dev->mc_count > MC_FILTERBREAK
	       ||  (dev->flags & IFF_ALLMULTI)) {
	/* Too many to filter perfectly -- accept all multicasts. */
	FUNC4(mc_filter, 0xff, sizeof(mc_filter));
	FUNC5(2, ioaddr + RX_MODE);	/* Use normal mode. */
    } else if (dev->mc_count == 0) {
	FUNC4(mc_filter, 0x00, sizeof(mc_filter));
	FUNC5(1, ioaddr + RX_MODE);	/* Ignore almost all multicasts. */
    } else {
	struct dev_mc_list *mclist;

	FUNC4(mc_filter, 0, sizeof(mc_filter));
	for (i = 0, mclist = dev->mc_list; mclist && i < dev->mc_count;
	     i++, mclist = mclist->next) {
	    unsigned int bit =
	    	FUNC0(ETH_ALEN, mclist->dmi_addr) >> 26;
	    mc_filter[bit >> 3] |= (1 << (bit & 7));
	}
	FUNC5(2, ioaddr + RX_MODE);	/* Use normal mode. */
    }

    /* Switch to bank 1 and set the multicast table. */
    saved_bank = FUNC1(ioaddr + CONFIG_1);
    FUNC5(0xe4, ioaddr + CONFIG_1);

    for (i = 0; i < 8; i++)
	FUNC5(mc_filter[i], ioaddr + MAR_ADR + i);
    FUNC5(saved_bank, ioaddr + CONFIG_1);

    FUNC5(saved_config_0, ioaddr + CONFIG_0);

    FUNC2(flags);
}