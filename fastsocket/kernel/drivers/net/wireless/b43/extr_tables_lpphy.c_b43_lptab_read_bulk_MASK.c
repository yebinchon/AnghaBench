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
typedef  int u32 ;
typedef  int u16 ;
struct b43_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_LPPHY_TABLEDATAHI ; 
 int /*<<< orphan*/  B43_LPPHY_TABLEDATALO ; 
 int /*<<< orphan*/  B43_LPPHY_TABLE_ADDR ; 
#define  B43_LPTAB_16BIT 130 
#define  B43_LPTAB_32BIT 129 
#define  B43_LPTAB_8BIT 128 
 int B43_LPTAB_TYPEMASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct b43_wldev *dev, u32 offset,
			 unsigned int nr_elements, void *_data)
{
	u32 type;
	u8 *data = _data;
	unsigned int i;

	type = offset & B43_LPTAB_TYPEMASK;
	offset &= ~B43_LPTAB_TYPEMASK;
	FUNC0(offset > 0xFFFF);

	FUNC2(dev, B43_LPPHY_TABLE_ADDR, offset);

	for (i = 0; i < nr_elements; i++) {
		switch (type) {
		case B43_LPTAB_8BIT:
			*data = FUNC1(dev, B43_LPPHY_TABLEDATALO) & 0xFF;
			data++;
			break;
		case B43_LPTAB_16BIT:
			*((u16 *)data) = FUNC1(dev, B43_LPPHY_TABLEDATALO);
			data += 2;
			break;
		case B43_LPTAB_32BIT:
			*((u32 *)data) = FUNC1(dev, B43_LPPHY_TABLEDATAHI);
			*((u32 *)data) <<= 16;
			*((u32 *)data) |= FUNC1(dev, B43_LPPHY_TABLEDATALO);
			data += 4;
			break;
		default:
			FUNC0(1);
		}
	}
}