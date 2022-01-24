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
struct TYPE_2__ {int mbit; scalar_t__ full; int giga; scalar_t__ isup; } ;
struct s6gmac {int /*<<< orphan*/  tx_chan; int /*<<< orphan*/  tx_dma; scalar_t__ reg; TYPE_1__ link; struct phy_device* phydev; } ;
struct phy_device {int speed; scalar_t__ duplex; scalar_t__ link; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ S6_GMAC_FIFOCONF5 ; 
 int S6_GMAC_FIFOCONF5_CFGBYTM ; 
 scalar_t__ S6_GMAC_MACCONF2 ; 
 int S6_GMAC_MACCONF2_FULL ; 
 int S6_GMAC_MACCONF2_IFMODE ; 
 int S6_GMAC_MACCONF2_IFMODE_BYTE ; 
 int S6_GMAC_MACCONF2_IFMODE_MASK ; 
 int S6_GMAC_MACCONF2_IFMODE_NIBBLE ; 
 struct s6gmac* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_device*) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct net_device *dev)
{
	struct s6gmac *pd = FUNC0(dev);
	struct phy_device *phydev = pd->phydev;
	if (pd->link.isup &&
			(!phydev->link ||
			(pd->link.mbit != phydev->speed) ||
			(pd->link.full != phydev->duplex))) {
		pd->link.isup = 0;
		FUNC2(dev);
		if (!phydev->link) {
			FUNC1(dev);
			FUNC4(phydev);
		}
	}
	if (!pd->link.isup && phydev->link) {
		if (pd->link.full != phydev->duplex) {
			u32 maccfg = FUNC5(pd->reg + S6_GMAC_MACCONF2);
			if (phydev->duplex)
				maccfg |= 1 << S6_GMAC_MACCONF2_FULL;
			else
				maccfg &= ~(1 << S6_GMAC_MACCONF2_FULL);
			FUNC8(maccfg, pd->reg + S6_GMAC_MACCONF2);
		}

		if (pd->link.giga != (phydev->speed == 1000)) {
			u32 fifocfg = FUNC5(pd->reg + S6_GMAC_FIFOCONF5);
			u32 maccfg = FUNC5(pd->reg + S6_GMAC_MACCONF2);
			maccfg &= ~(S6_GMAC_MACCONF2_IFMODE_MASK
				     << S6_GMAC_MACCONF2_IFMODE);
			if (phydev->speed == 1000) {
				fifocfg |= 1 << S6_GMAC_FIFOCONF5_CFGBYTM;
				maccfg |= S6_GMAC_MACCONF2_IFMODE_BYTE
					   << S6_GMAC_MACCONF2_IFMODE;
			} else {
				fifocfg &= ~(1 << S6_GMAC_FIFOCONF5_CFGBYTM);
				maccfg |= S6_GMAC_MACCONF2_IFMODE_NIBBLE
					   << S6_GMAC_MACCONF2_IFMODE;
			}
			FUNC8(fifocfg, pd->reg + S6_GMAC_FIFOCONF5);
			FUNC8(maccfg, pd->reg + S6_GMAC_MACCONF2);
		}

		if (!FUNC6(pd->tx_dma, pd->tx_chan))
			FUNC3(dev);
		FUNC7(dev, 1);
	}
}