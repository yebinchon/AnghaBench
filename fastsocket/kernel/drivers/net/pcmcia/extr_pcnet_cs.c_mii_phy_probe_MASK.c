#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct net_device {unsigned int base_addr; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int pna_phy; int eth_phy; } ;
typedef  TYPE_1__ pcnet_dev_t ;

/* Variables and functions */
 int AM79C9XX_ETH_PHY ; 
 int AM79C9XX_HOME_PHY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 unsigned int DLINK_GPIO ; 
 int MII_PHYID_REG1 ; 
 int MII_PHYID_REG2 ; 
 int MII_PHYID_REV_MASK ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 int FUNC2 (unsigned int,int,int) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
    pcnet_dev_t *info = FUNC1(dev);
    unsigned int mii_addr = dev->base_addr + DLINK_GPIO;
    int i;
    u_int tmp, phyid;

    for (i = 31; i >= 0; i--) {
	tmp = FUNC2(mii_addr, i, 1);
	if ((tmp == 0) || (tmp == 0xffff))
	    continue;
	tmp = FUNC2(mii_addr, i, MII_PHYID_REG1);
	phyid = tmp << 16;
	phyid |= FUNC2(mii_addr, i, MII_PHYID_REG2);
	phyid &= MII_PHYID_REV_MASK;
	FUNC0(0, "%s: MII at %d is 0x%08x\n", dev->name, i, phyid);
	if (phyid == AM79C9XX_HOME_PHY) {
	    info->pna_phy = i;
	} else if (phyid != AM79C9XX_ETH_PHY) {
	    info->eth_phy = i;
	}
    }
}