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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct nes_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nes_device*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct nes_device*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct nes_device *nesdev, u8 phy_type, u8 phy_index)
{
	u32 counter = 0;
	u16 phy_data;
	int ret = 0;

	FUNC0(nesdev, 1, phy_index, &phy_data);
	FUNC1(nesdev, 23, phy_index, 0xb000);

	/* Reset the PHY */
	FUNC1(nesdev, 0, phy_index, 0x8000);
	FUNC2(100);
	counter = 0;
	do {
		FUNC0(nesdev, 0, phy_index, &phy_data);
		if (counter++ > 100) {
			ret = -1;
			break;
		}
	} while (phy_data & 0x8000);

	/* Setting no phy loopback */
	phy_data &= 0xbfff;
	phy_data |= 0x1140;
	FUNC1(nesdev, 0, phy_index,  phy_data);
	FUNC0(nesdev, 0, phy_index, &phy_data);
	FUNC0(nesdev, 0x17, phy_index, &phy_data);
	FUNC0(nesdev, 0x1e, phy_index, &phy_data);

	/* Setting the interrupt mask */
	FUNC0(nesdev, 0x19, phy_index, &phy_data);
	FUNC1(nesdev, 0x19, phy_index, 0xffee);
	FUNC0(nesdev, 0x19, phy_index, &phy_data);

	/* turning on flow control */
	FUNC0(nesdev, 4, phy_index, &phy_data);
	FUNC1(nesdev, 4, phy_index, (phy_data & ~(0x03E0)) | 0xc00);
	FUNC0(nesdev, 4, phy_index, &phy_data);

	/* Clear Half duplex */
	FUNC0(nesdev, 9, phy_index, &phy_data);
	FUNC1(nesdev, 9, phy_index, phy_data & ~(0x0100));
	FUNC0(nesdev, 9, phy_index, &phy_data);

	FUNC0(nesdev, 0, phy_index, &phy_data);
	FUNC1(nesdev, 0, phy_index, phy_data | 0x0300);

	return ret;
}