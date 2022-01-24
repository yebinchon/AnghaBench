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
typedef  int u8 ;
typedef  int u16 ;
struct b43_phy {int radio_ver; int radio_rev; struct b43_phy_g* g; } ;
struct b43_wldev {int /*<<< orphan*/  wl; struct b43_phy phy; } ;
struct b43_txpower_lo_control {int tx_bias; int tx_magn; } ;
struct b43_rfatt {int att; } ;
struct TYPE_2__ {int with_padmix; } ;
struct b43_phy_g {int tx_control; TYPE_1__ bbatt; TYPE_1__ rfatt; struct b43_txpower_lo_control* lo_control; } ;
struct b43_bbatt {int att; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_DBG_XMITPOWER ; 
 int /*<<< orphan*/  B43_SHM_SHARED ; 
 int /*<<< orphan*/  B43_SHM_SH_RFATT ; 
 int B43_TXCTL_TXMIX ; 
 scalar_t__ FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int,int,int,int) ; 
 scalar_t__ FUNC7 (struct b43_phy*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct b43_rfatt const*,int) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct b43_wldev *dev,
			      const struct b43_bbatt *bbatt,
			      const struct b43_rfatt *rfatt, u8 tx_control)
{
	struct b43_phy *phy = &dev->phy;
	struct b43_phy_g *gphy = phy->g;
	struct b43_txpower_lo_control *lo = gphy->lo_control;
	u16 bb, rf;
	u16 tx_bias, tx_magn;

	bb = bbatt->att;
	rf = rfatt->att;
	tx_bias = lo->tx_bias;
	tx_magn = lo->tx_magn;
	if (FUNC9(tx_bias == 0xFF))
		tx_bias = 0;

	/* Save the values for later. Use memmove, because it's valid
	 * to pass &gphy->rfatt as rfatt pointer argument. Same for bbatt. */
	gphy->tx_control = tx_control;
	FUNC8(&gphy->rfatt, rfatt, sizeof(*rfatt));
	gphy->rfatt.with_padmix = !!(tx_control & B43_TXCTL_TXMIX);
	FUNC8(&gphy->bbatt, bbatt, sizeof(*bbatt));

	if (FUNC0(dev, B43_DBG_XMITPOWER)) {
		FUNC6(dev->wl, "Tuning TX-power to bbatt(%u), "
		       "rfatt(%u), tx_control(0x%02X), "
		       "tx_bias(0x%02X), tx_magn(0x%02X)\n",
		       bb, rf, tx_control, tx_bias, tx_magn);
	}

	FUNC1(dev, bb);
	FUNC5(dev, B43_SHM_SHARED, B43_SHM_SH_RFATT, rf);
	if (phy->radio_ver == 0x2050 && phy->radio_rev == 8) {
		FUNC4(dev, 0x43,
				  (rf & 0x000F) | (tx_control & 0x0070));
	} else {
		FUNC3(dev, 0x43, 0xFFF0, (rf & 0x000F));
		FUNC3(dev, 0x52, ~0x0070, (tx_control & 0x0070));
	}
	if (FUNC7(phy)) {
		FUNC4(dev, 0x52, tx_magn | tx_bias);
	} else {
		FUNC3(dev, 0x52, 0xFFF0, (tx_bias & 0x000F));
	}
	FUNC2(dev);
}