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
typedef  int u16 ;
struct b43_phy {int rev; } ;
struct b43_wldev {struct b43_phy phy; } ;
typedef  int s16 ;

/* Variables and functions */
 int B43_OFDMTAB_GAINX ; 
 int B43_OFDMTAB_GAINX_R1 ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int,int,int) ; 

__attribute__((used)) static void FUNC3(struct b43_wldev *dev,
			      s16 first, s16 second, s16 third)
{
	struct b43_phy *phy = &dev->phy;
	u16 i;
	u16 start = 0x08, end = 0x18;
	u16 tmp;
	u16 table;

	if (phy->rev <= 1) {
		start = 0x10;
		end = 0x20;
	}

	table = B43_OFDMTAB_GAINX;
	if (phy->rev <= 1)
		table = B43_OFDMTAB_GAINX_R1;
	for (i = 0; i < 4; i++)
		FUNC1(dev, table, i, first);

	for (i = start; i < end; i++)
		FUNC1(dev, table, i, second);

	if (third != -1) {
		tmp = ((u16) third << 14) | ((u16) third << 6);
		FUNC2(dev, 0x04A0, 0xBFBF, tmp);
		FUNC2(dev, 0x04A1, 0xBFBF, tmp);
		FUNC2(dev, 0x04A2, 0xBFBF, tmp);
	}
	FUNC0(dev, false, true);
}