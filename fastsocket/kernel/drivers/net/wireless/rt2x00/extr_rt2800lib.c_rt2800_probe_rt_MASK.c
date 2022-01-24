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
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  MAC_CSR0 ; 
 int /*<<< orphan*/  MAC_CSR0_3290 ; 
 int /*<<< orphan*/  MAC_CSR0_CHIPSET ; 
 int /*<<< orphan*/  MAC_CSR0_REVISION ; 
#define  RT2860 140 
#define  RT2872 139 
#define  RT2883 138 
#define  RT3070 137 
#define  RT3071 136 
#define  RT3090 135 
#define  RT3290 134 
#define  RT3352 133 
#define  RT3390 132 
#define  RT3572 131 
#define  RT5390 130 
#define  RT5392 129 
#define  RT5592 128 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,char*,int,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int,int) ; 

__attribute__((used)) static int FUNC5(struct rt2x00_dev *rt2x00dev)
{
	u32 reg;
	u32 rt;
	u32 rev;

	if (FUNC3(rt2x00dev, RT3290))
		FUNC0(rt2x00dev, MAC_CSR0_3290, &reg);
	else
		FUNC0(rt2x00dev, MAC_CSR0, &reg);

	rt = FUNC2(reg, MAC_CSR0_CHIPSET);
	rev = FUNC2(reg, MAC_CSR0_REVISION);

	switch (rt) {
	case RT2860:
	case RT2872:
	case RT2883:
	case RT3070:
	case RT3071:
	case RT3090:
	case RT3290:
	case RT3352:
	case RT3390:
	case RT3572:
	case RT5390:
	case RT5392:
	case RT5592:
		break;
	default:
		FUNC1(rt2x00dev, "Invalid RT chipset 0x%04x, rev %04x detected\n",
			   rt, rev);
		return -ENODEV;
	}

	FUNC4(rt2x00dev, rt, rev);

	return 0;
}