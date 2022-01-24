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

void FUNC4(struct nes_device *nesdev, u8 phy_reg, u8 phy_addr, u16 data)
{
	u32 u32temp;
	u32 counter;

	FUNC2(nesdev, NES_IDX_MAC_MDIO_CONTROL,
			0x50020000 | data | ((u32)phy_reg << 18) | ((u32)phy_addr << 23));
	for (counter = 0; counter < 100 ; counter++) {
		FUNC3(30);
		u32temp = FUNC1(nesdev, NES_IDX_MAC_INT_STATUS);
		if (u32temp & 1) {
			/* nes_debug(NES_DBG_PHY, "Phy interrupt status = 0x%X.\n", u32temp); */
			FUNC2(nesdev, NES_IDX_MAC_INT_STATUS, 1);
			break;
		}
	}
	if (!(u32temp & 1))
		FUNC0(NES_DBG_PHY, "Phy is not responding. interrupt status = 0x%X.\n",
				u32temp);
}