#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_2__ {struct b43_phy_g* g; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_g {scalar_t__* tssi2dbm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int,int) ; 

__attribute__((used)) static void FUNC2(struct b43_wldev *dev)
{
	struct b43_phy_g *gphy = dev->phy.g;
	int i;
	u16 value;

	for (i = 0; i < 32; i++)
		FUNC0(dev, 0x3C20, i, gphy->tssi2dbm[i]);
	for (i = 32; i < 64; i++)
		FUNC0(dev, 0x3C00, i - 32, gphy->tssi2dbm[i]);
	for (i = 0; i < 64; i += 2) {
		value = (u16) gphy->tssi2dbm[i];
		value |= ((u16) gphy->tssi2dbm[i + 1]) << 8;
		FUNC1(dev, 0x380 + (i / 2), value);
	}
}