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
typedef  int u32 ;
struct lpphy_tx_gain_table_entry {int pad; int pga; int gm; int bb_mult; int dac; } ;
struct TYPE_2__ {int rev; } ;
struct b43_wldev {int /*<<< orphan*/  wl; TYPE_1__ phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ IEEE80211_BAND_5GHZ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct b43_wldev *dev, int offset,
				struct lpphy_tx_gain_table_entry data)
{
	u32 tmp;

	FUNC1(dev->phy.rev < 2);

	tmp  = data.pad << 16;
	tmp |= data.pga << 8;
	tmp |= data.gm;
	if (dev->phy.rev >= 3) {
		if (FUNC2(dev->wl) == IEEE80211_BAND_5GHZ)
			tmp |= 0x10 << 24;
		else
			tmp |= 0x70 << 24;
	} else {
		if (FUNC2(dev->wl) == IEEE80211_BAND_5GHZ)
			tmp |= 0x14 << 24;
		else
			tmp |= 0x7F << 24;
	}
	FUNC3(dev, FUNC0(7, 0xC0 + offset), tmp);
	tmp  = data.bb_mult << 20;
	tmp |= data.dac << 28;
	FUNC3(dev, FUNC0(7, 0x140 + offset), tmp);
}