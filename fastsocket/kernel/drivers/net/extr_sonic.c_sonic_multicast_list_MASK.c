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
struct sonic_local {int cda_laddr; } ;
struct net_device {int flags; int mc_count; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {unsigned char* dmi_addr; struct dev_mc_list* next; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  SONIC_CDC ; 
 int /*<<< orphan*/  SONIC_CDP ; 
 int /*<<< orphan*/  SONIC_CD_CAP0 ; 
 int /*<<< orphan*/  SONIC_CD_CAP1 ; 
 int /*<<< orphan*/  SONIC_CD_CAP2 ; 
 int /*<<< orphan*/  SONIC_CMD ; 
 unsigned int SONIC_CR_LCAM ; 
 int /*<<< orphan*/  SONIC_RCR ; 
 unsigned int SONIC_RCR_AMC ; 
 unsigned int SONIC_RCR_BRD ; 
 unsigned int SONIC_RCR_PRO ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 struct sonic_local* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int,int /*<<< orphan*/ ,unsigned char) ; 
 int sonic_debug ; 
 int FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
	struct sonic_local *lp = FUNC2(dev);
	unsigned int rcr;
	struct dev_mc_list *dmi = dev->mc_list;
	unsigned char *addr;
	int i;

	rcr = FUNC0(SONIC_RCR) & ~(SONIC_RCR_PRO | SONIC_RCR_AMC);
	rcr |= SONIC_RCR_BRD;	/* accept broadcast packets */

	if (dev->flags & IFF_PROMISC) {	/* set promiscuous mode */
		rcr |= SONIC_RCR_PRO;
	} else {
		if ((dev->flags & IFF_ALLMULTI) || (dev->mc_count > 15)) {
			rcr |= SONIC_RCR_AMC;
		} else {
			if (sonic_debug > 2)
				FUNC3("sonic_multicast_list: mc_count %d\n", dev->mc_count);
			FUNC6(dev, 1);  /* always enable our own address */
			for (i = 1; i <= dev->mc_count; i++) {
				addr = dmi->dmi_addr;
				dmi = dmi->next;
				FUNC4(dev, i, SONIC_CD_CAP0, addr[1] << 8 | addr[0]);
				FUNC4(dev, i, SONIC_CD_CAP1, addr[3] << 8 | addr[2]);
				FUNC4(dev, i, SONIC_CD_CAP2, addr[5] << 8 | addr[4]);
				FUNC6(dev, FUNC5(dev) | (1 << i));
			}
			FUNC1(SONIC_CDC, 16);
			/* issue Load CAM command */
			FUNC1(SONIC_CDP, lp->cda_laddr & 0xffff);
			FUNC1(SONIC_CMD, SONIC_CR_LCAM);
		}
	}

	if (sonic_debug > 2)
		FUNC3("sonic_multicast_list: setting RCR=%x\n", rcr);

	FUNC1(SONIC_RCR, rcr);
}