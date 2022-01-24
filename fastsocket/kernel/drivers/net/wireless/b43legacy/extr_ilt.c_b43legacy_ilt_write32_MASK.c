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
typedef  int u16 ;
struct b43legacy_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43legacy_PHY_ILT_G_CTRL ; 
 int /*<<< orphan*/  B43legacy_PHY_ILT_G_DATA1 ; 
 int /*<<< orphan*/  B43legacy_PHY_ILT_G_DATA2 ; 
 int /*<<< orphan*/  FUNC0 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(struct b43legacy_wldev *dev, u16 offset, u32 val)
{
	FUNC0(dev, B43legacy_PHY_ILT_G_CTRL, offset);
	FUNC1();
	FUNC0(dev, B43legacy_PHY_ILT_G_DATA2,
			    (val & 0xFFFF0000) >> 16);
	FUNC0(dev, B43legacy_PHY_ILT_G_DATA1,
			    val & 0x0000FFFF);
}