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
struct usbnet {TYPE_1__* net; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEPROM_MAC_OFFSET ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct usbnet *dev)
{
	/* try reading mac address from EEPROM */
	if (FUNC4(dev, EEPROM_MAC_OFFSET, ETH_ALEN,
			dev->net->dev_addr) == 0) {
		if (FUNC1(dev->net->dev_addr)) {
			/* eeprom values are valid so use them */
			if (FUNC2(dev))
				FUNC0(dev, "MAC address read from EEPROM");
			return;
		}
	}

	/* no eeprom, or eeprom values are invalid. generate random MAC */
	FUNC3(dev->net->dev_addr);
	if (FUNC2(dev))
		FUNC0(dev, "MAC address set to random_ether_addr");
}