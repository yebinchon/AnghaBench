#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct bcma_drv_cc {int dummy; } ;
struct TYPE_8__ {int radio_ver; int /*<<< orphan*/  channel; } ;
struct b43_wldev {TYPE_4__ phy; int /*<<< orphan*/  wl; TYPE_3__* dev; } ;
struct TYPE_7__ {TYPE_2__* bdev; } ;
struct TYPE_6__ {TYPE_1__* bus; } ;
struct TYPE_5__ {struct bcma_drv_cc drv_cc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ IEEE80211_BAND_2GHZ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC12 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct bcma_drv_cc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct bcma_drv_cc*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct b43_wldev *dev)
{
	struct bcma_drv_cc *cc = &dev->dev->bdev->bus->drv_cc;

	FUNC9(dev, 0x44a, 0x80);
	FUNC7(dev, 0x44a, 0x7f);
	FUNC9(dev, 0x6d1, 0x80);
	FUNC10(dev, 0x6d0, 0x7);

	FUNC2(dev);

	FUNC10(dev, 0x60a, 0xa0);
	FUNC10(dev, 0x46a, 0x19);
	FUNC8(dev, 0x663, 0xFF00, 0x64);

	FUNC5(dev);

	FUNC4(dev);
	FUNC3(dev);

	if (dev->phy.radio_ver == 0x2064)
		FUNC11(dev);
	else
		FUNC0(1);

	if (FUNC1(dev->wl) == IEEE80211_BAND_2GHZ)
		FUNC6(dev);

	FUNC12(dev, dev->phy.channel);

	FUNC14(cc, 0, 0xf, 0x9);
	FUNC13(cc, 0, 0, 0x03cddddd);

	/* TODO */

	FUNC9(dev, 0x448, 0x4000);
	FUNC15(100);
	FUNC7(dev, 0x448, ~0x4000);

	/* TODO */

	return 0;
}