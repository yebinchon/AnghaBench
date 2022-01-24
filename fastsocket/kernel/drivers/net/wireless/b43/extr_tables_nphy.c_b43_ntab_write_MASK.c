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
typedef  int u32 ;
struct b43_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_NPHY_TABLE_ADDR ; 
 int /*<<< orphan*/  B43_NPHY_TABLE_DATAHI ; 
 int /*<<< orphan*/  B43_NPHY_TABLE_DATALO ; 
#define  B43_NTAB_16BIT 130 
#define  B43_NTAB_32BIT 129 
#define  B43_NTAB_8BIT 128 
 int B43_NTAB_TYPEMASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct b43_wldev *dev, u32 offset, u32 value)
{
	u32 type;

	type = offset & B43_NTAB_TYPEMASK;
	offset &= 0xFFFF;

	switch (type) {
	case B43_NTAB_8BIT:
		FUNC0(value & ~0xFF);
		FUNC2(dev, B43_NPHY_TABLE_ADDR, offset);
		FUNC2(dev, B43_NPHY_TABLE_DATALO, value);
		break;
	case B43_NTAB_16BIT:
		FUNC0(value & ~0xFFFF);
		FUNC2(dev, B43_NPHY_TABLE_ADDR, offset);
		FUNC2(dev, B43_NPHY_TABLE_DATALO, value);
		break;
	case B43_NTAB_32BIT:
		FUNC2(dev, B43_NPHY_TABLE_ADDR, offset);
		FUNC2(dev, B43_NPHY_TABLE_DATAHI, value >> 16);
		FUNC2(dev, B43_NPHY_TABLE_DATALO, value & 0xFFFF);
		break;
	default:
		FUNC0(1);
	}

	return;

	/* Some compiletime assertions... */
	FUNC1();
}