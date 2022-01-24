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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct nes_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NES_DBG_PHY ; 
 int /*<<< orphan*/  NES_IDX_MAC_INT_STATUS ; 
 int /*<<< orphan*/  NES_IDX_MAC_MDIO_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct nes_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nes_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(struct nes_device *nesdev, u16 phy_addr, u8 dev_addr, u16 phy_reg,
		u16 data)
{
	u32 port_addr;
	u32 u32temp;
	u32 counter;

	port_addr = phy_addr;

	/* set address */
	FUNC2(nesdev, NES_IDX_MAC_MDIO_CONTROL,
			0x00020000 | (u32)phy_reg | (((u32)dev_addr) << 18) | (((u32)port_addr) << 23));
	for (counter = 0; counter < 100 ; counter++) {
		FUNC3(30);
		u32temp = FUNC1(nesdev, NES_IDX_MAC_INT_STATUS);
		if (u32temp & 1) {
			FUNC2(nesdev, NES_IDX_MAC_INT_STATUS, 1);
			break;
		}
	}
	if (!(u32temp & 1))
		FUNC0(NES_DBG_PHY, "Phy is not responding. interrupt status = 0x%X.\n",
				u32temp);

	/* set data */
	FUNC2(nesdev, NES_IDX_MAC_MDIO_CONTROL,
			0x10020000 | (u32)data | (((u32)dev_addr) << 18) | (((u32)port_addr) << 23));
	for (counter = 0; counter < 100 ; counter++) {
		FUNC3(30);
		u32temp = FUNC1(nesdev, NES_IDX_MAC_INT_STATUS);
		if (u32temp & 1) {
			FUNC2(nesdev, NES_IDX_MAC_INT_STATUS, 1);
			break;
		}
	}
	if (!(u32temp & 1))
		FUNC0(NES_DBG_PHY, "Phy is not responding. interrupt status = 0x%X.\n",
				u32temp);
}