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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;

/* Variables and functions */
 unsigned long DCR9 ; 
 int /*<<< orphan*/  PCI_ULI5263_ID ; 
 int /*<<< orphan*/  PHY_DATA_0 ; 
 int /*<<< orphan*/  PHY_DATA_1 ; 
 int FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC3(unsigned long iobase, u8 phy_addr, u8 offset, u32 chip_id)
{
	int i;
	u16 phy_data;
	unsigned long ioaddr;

	if(chip_id == PCI_ULI5263_ID)
		return FUNC1(iobase, phy_addr, offset);
	/* M5261/M5263 Chip */
	ioaddr = iobase + DCR9;

	/* Send 33 synchronization clock to Phy controller */
	for (i = 0; i < 35; i++)
		FUNC2(ioaddr, PHY_DATA_1, chip_id);

	/* Send start command(01) to Phy */
	FUNC2(ioaddr, PHY_DATA_0, chip_id);
	FUNC2(ioaddr, PHY_DATA_1, chip_id);

	/* Send read command(10) to Phy */
	FUNC2(ioaddr, PHY_DATA_1, chip_id);
	FUNC2(ioaddr, PHY_DATA_0, chip_id);

	/* Send Phy address */
	for (i = 0x10; i > 0; i = i >> 1)
		FUNC2(ioaddr, phy_addr & i ? PHY_DATA_1 : PHY_DATA_0, chip_id);

	/* Send register address */
	for (i = 0x10; i > 0; i = i >> 1)
		FUNC2(ioaddr, offset & i ? PHY_DATA_1 : PHY_DATA_0, chip_id);

	/* Skip transition state */
	FUNC0(ioaddr, chip_id);

	/* read 16bit data */
	for (phy_data = 0, i = 0; i < 16; i++) {
		phy_data <<= 1;
		phy_data |= FUNC0(ioaddr, chip_id);
	}

	return phy_data;
}