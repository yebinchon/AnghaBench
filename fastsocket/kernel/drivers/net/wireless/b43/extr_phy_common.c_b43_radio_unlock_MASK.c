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
struct TYPE_2__ {int radio_locked; } ;
struct b43_wldev {TYPE_1__ phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_MACCTL_RADIOLOCK ; 
 int /*<<< orphan*/  B43_MMIO_MACCTL ; 
 int /*<<< orphan*/  B43_MMIO_PHY_VER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct b43_wldev *dev)
{
	u32 macctl;

#if B43_DEBUG
	B43_WARN_ON(!dev->phy.radio_locked);
	dev->phy.radio_locked = false;
#endif

	/* Commit any write */
	FUNC1(dev, B43_MMIO_PHY_VER);
	/* unlock */
	macctl = FUNC2(dev, B43_MMIO_MACCTL);
	macctl &= ~B43_MACCTL_RADIOLOCK;
	FUNC3(dev, B43_MMIO_MACCTL, macctl);
}