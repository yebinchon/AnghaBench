#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* ops; } ;
struct b43_wldev {TYPE_3__* wl; TYPE_2__ phy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * current_beacon; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* switch_analog ) (struct b43_wldev*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  B43_MACCTL_PSM_JMP0 ; 
 int /*<<< orphan*/  B43_MACCTL_PSM_RUN ; 
 int /*<<< orphan*/  B43_MMIO_MACCTL ; 
 scalar_t__ B43_STAT_INITIALIZED ; 
 int /*<<< orphan*/  B43_STAT_UNINIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct b43_wldev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct b43_wldev *dev)
{
	FUNC0(dev && FUNC9(dev) > B43_STAT_INITIALIZED);
	if (!dev || FUNC9(dev) != B43_STAT_INITIALIZED)
		return;

	/* Unregister HW RNG driver */
	FUNC7(dev->wl);

	FUNC8(dev, B43_STAT_UNINIT);

	/* Stop the microcode PSM. */
	FUNC5(dev, B43_MMIO_MACCTL, ~B43_MACCTL_PSM_RUN,
		      B43_MACCTL_PSM_JMP0);

	FUNC4(dev);
	FUNC6(dev);
	FUNC2(dev);
	dev->phy.ops->switch_analog(dev, 0);
	if (dev->wl->current_beacon) {
		FUNC10(dev->wl->current_beacon);
		dev->wl->current_beacon = NULL;
	}

	FUNC3(dev, 0);
	FUNC1(dev);
}