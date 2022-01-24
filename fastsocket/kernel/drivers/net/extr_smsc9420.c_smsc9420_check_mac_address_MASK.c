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
typedef  void* u8 ;
typedef  int u32 ;
struct smsc9420_pdata {int dummy; } ;
struct net_device {void** dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADDRH ; 
 int /*<<< orphan*/  ADDRL ; 
 int /*<<< orphan*/  PROBE ; 
 scalar_t__ FUNC0 (void**) ; 
 struct smsc9420_pdata* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 
 int FUNC3 (struct smsc9420_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	struct smsc9420_pdata *pd = FUNC1(dev);

	/* Check if mac address has been specified when bringing interface up */
	if (FUNC0(dev->dev_addr)) {
		FUNC4(dev);
		FUNC5(PROBE, "MAC Address is specified by configuration");
	} else {
		/* Try reading mac address from device. if EEPROM is present
		 * it will already have been set */
		u32 mac_high16 = FUNC3(pd, ADDRH);
		u32 mac_low32 = FUNC3(pd, ADDRL);
		dev->dev_addr[0] = (u8)(mac_low32);
		dev->dev_addr[1] = (u8)(mac_low32 >> 8);
		dev->dev_addr[2] = (u8)(mac_low32 >> 16);
		dev->dev_addr[3] = (u8)(mac_low32 >> 24);
		dev->dev_addr[4] = (u8)(mac_high16);
		dev->dev_addr[5] = (u8)(mac_high16 >> 8);

		if (FUNC0(dev->dev_addr)) {
			/* eeprom values are valid  so use them */
			FUNC5(PROBE, "Mac Address is read from EEPROM");
		} else {
			/* eeprom values are invalid, generate random MAC */
			FUNC2(dev->dev_addr);
			FUNC4(dev);
			FUNC5(PROBE,
				"MAC Address is set to random_ether_addr");
		}
	}
}