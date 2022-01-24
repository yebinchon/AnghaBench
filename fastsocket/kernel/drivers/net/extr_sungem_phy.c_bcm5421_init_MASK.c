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
typedef  int u16 ;
struct mii_phy {scalar_t__ platform_data; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int MII_PHYSID1 ; 
 int MII_PHYSID2 ; 
 struct device_node* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mii_phy*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_phy*,int,int) ; 

__attribute__((used)) static int FUNC4(struct mii_phy* phy)
{
	u16 data;
	unsigned int id;

	id = (FUNC2(phy, MII_PHYSID1) << 16 | FUNC2(phy, MII_PHYSID2));

	/* Revision 0 of 5421 needs some fixups */
	if (id == 0x002060e0) {
		/* This is borrowed from MacOS
		 */
		FUNC3(phy, 0x18, 0x1007);
		data = FUNC2(phy, 0x18);
		FUNC3(phy, 0x18, data | 0x0400);
		FUNC3(phy, 0x18, 0x0007);
		data = FUNC2(phy, 0x18);
		FUNC3(phy, 0x18, data | 0x0800);
		FUNC3(phy, 0x17, 0x000a);
		data = FUNC2(phy, 0x15);
		FUNC3(phy, 0x15, data | 0x0200);
	}

	/* Pick up some init code from OF for K2 version */
	if ((id & 0xfffffff0) == 0x002062e0) {
		FUNC3(phy, 4, 0x01e1);
		FUNC3(phy, 9, 0x0300);
	}

	/* Check if we can enable automatic low power */
#ifdef CONFIG_PPC_PMAC
	if (phy->platform_data) {
		struct device_node *np = of_get_parent(phy->platform_data);
		int can_low_power = 1;
		if (np == NULL || of_get_property(np, "no-autolowpower", NULL))
			can_low_power = 0;
		if (can_low_power) {
			/* Enable automatic low-power */
			phy_write(phy, 0x1c, 0x9002);
			phy_write(phy, 0x1c, 0xa821);
			phy_write(phy, 0x1c, 0x941d);
		}
	}
#endif /* CONFIG_PPC_PMAC */

	return 0;
}