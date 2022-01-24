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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
typedef  int u16 ;

/* Variables and functions */
 unsigned long DCR9 ; 
 scalar_t__ PCI_DM9132_ID ; 
 int /*<<< orphan*/  PHY_DATA_0 ; 
 int /*<<< orphan*/  PHY_DATA_1 ; 
 int FUNC0 (unsigned long) ; 
 int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC3(unsigned long iobase, u8 phy_addr, u8 offset, u32 chip_id)
{
	int i;
	u16 phy_data;
	unsigned long ioaddr;

	if (chip_id == PCI_DM9132_ID) {
		/* DM9132 Chip */
		ioaddr = iobase + 0x80 + offset * 4;
		phy_data = FUNC0(ioaddr);
	} else {
		/* DM9102/DM9102A Chip */
		ioaddr = iobase + DCR9;

		/* Send 33 synchronization clock to Phy controller */
		for (i = 0; i < 35; i++)
			FUNC2(ioaddr, PHY_DATA_1);

		/* Send start command(01) to Phy */
		FUNC2(ioaddr, PHY_DATA_0);
		FUNC2(ioaddr, PHY_DATA_1);

		/* Send read command(10) to Phy */
		FUNC2(ioaddr, PHY_DATA_1);
		FUNC2(ioaddr, PHY_DATA_0);

		/* Send Phy address */
		for (i = 0x10; i > 0; i = i >> 1)
			FUNC2(ioaddr,
				       phy_addr & i ? PHY_DATA_1 : PHY_DATA_0);

		/* Send register address */
		for (i = 0x10; i > 0; i = i >> 1)
			FUNC2(ioaddr,
				       offset & i ? PHY_DATA_1 : PHY_DATA_0);

		/* Skip transition state */
		FUNC1(ioaddr);

		/* read 16bit data */
		for (phy_data = 0, i = 0; i < 16; i++) {
			phy_data <<= 1;
			phy_data |= FUNC1(ioaddr);
		}
	}

	return phy_data;
}