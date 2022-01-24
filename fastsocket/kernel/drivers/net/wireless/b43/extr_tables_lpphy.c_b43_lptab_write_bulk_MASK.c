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
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct b43_wldev *dev, u32 offset,
			  unsigned int nr_elements, const void *_data)
{
	u32 type, value;
	const u8 *data = _data;
	unsigned int i;

	type = offset & B43_LPTAB_TYPEMASK;
	offset &= ~B43_LPTAB_TYPEMASK;
	FUNC0(offset > 0xFFFF);

	FUNC1(dev, B43_LPPHY_TABLE_ADDR, offset);

	for (i = 0; i < nr_elements; i++) {
		switch (type) {
		case B43_LPTAB_8BIT:
			value = *data;
			data++;
			FUNC0(value & ~0xFF);
			FUNC1(dev, B43_LPPHY_TABLEDATALO, value);
			break;
		case B43_LPTAB_16BIT:
			value = *((u16 *)data);
			data += 2;
			FUNC0(value & ~0xFFFF);
			FUNC1(dev, B43_LPPHY_TABLEDATALO, value);
			break;
		case B43_LPTAB_32BIT:
			value = *((u32 *)data);
			data += 4;
			FUNC1(dev, B43_LPPHY_TABLEDATAHI, value >> 16);
			FUNC1(dev, B43_LPPHY_TABLEDATALO, value);
			break;
		default:
			FUNC0(1);
		}
	}
}