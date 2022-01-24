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
typedef  int /*<<< orphan*/  u32 ;
typedef  void* u16 ;
struct TYPE_2__ {int rev; struct b43_phy_lp* lp; } ;
struct b43_wldev {TYPE_1__ phy; int /*<<< orphan*/  wl; } ;
struct b43_phy_lp {int txpctl_mode; int tx_pwr_idx_over; int /*<<< orphan*/  antenna; scalar_t__ rc_cap; int /*<<< orphan*/  channel; void* tssi_idx; void* tssi_npt; } ;
typedef  int /*<<< orphan*/  saved_tab ;
typedef  int s8 ;
typedef  enum b43_lpphy_txpctl_mode { ____Placeholder_b43_lpphy_txpctl_mode } b43_lpphy_txpctl_mode ;

/* Variables and functions */
 int B43_LPPHY_TXPCTL_OFF ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  B43_MMIO_CHANNEL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,unsigned int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ,unsigned int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC7 (unsigned int const,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC10 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC11 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC13 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC16 (struct b43_wldev*) ; 

__attribute__((used)) static void FUNC17(struct b43_wldev *dev)
{
	struct b43_phy_lp *lpphy = dev->phy.lp;
	u32 *saved_tab;
	const unsigned int saved_tab_size = 256;
	enum b43_lpphy_txpctl_mode txpctl_mode;
	s8 tx_pwr_idx_over;
	u16 tssi_npt, tssi_idx;

	saved_tab = FUNC7(saved_tab_size, sizeof(saved_tab[0]), GFP_KERNEL);
	if (!saved_tab) {
		FUNC6(dev->wl, "PR41573 failed. Out of memory!\n");
		return;
	}

	FUNC10(dev);
	txpctl_mode = lpphy->txpctl_mode;
	tx_pwr_idx_over = lpphy->tx_pwr_idx_over;
	tssi_npt = lpphy->tssi_npt;
	tssi_idx = lpphy->tssi_idx;

	if (dev->phy.rev < 2) {
		FUNC3(dev, FUNC0(10, 0x140),
				    saved_tab_size, saved_tab);
	} else {
		FUNC3(dev, FUNC0(7, 0x140),
				    saved_tab_size, saved_tab);
	}
	//FIXME PHY reset
	FUNC15(dev); //FIXME is table init needed?
	FUNC9(dev);
	FUNC16(dev);
	FUNC2(dev, false);
	FUNC14(dev, B43_LPPHY_TXPCTL_OFF);
	if (dev->phy.rev < 2) {
		FUNC4(dev, FUNC0(10, 0x140),
				     saved_tab_size, saved_tab);
	} else {
		FUNC4(dev, FUNC0(7, 0x140),
				     saved_tab_size, saved_tab);
	}
	FUNC5(dev, B43_MMIO_CHANNEL, lpphy->channel);
	lpphy->tssi_npt = tssi_npt;
	lpphy->tssi_idx = tssi_idx;
	FUNC11(dev, lpphy->channel);
	if (tx_pwr_idx_over != -1)
		FUNC13(dev, tx_pwr_idx_over);
	if (lpphy->rc_cap)
		FUNC12(dev);
	FUNC1(dev, lpphy->antenna);
	FUNC14(dev, txpctl_mode);
	FUNC8(saved_tab);
}