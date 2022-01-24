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
typedef  scalar_t__ u16 ;
struct b43_wldev {TYPE_1__* dev; } ;
struct TYPE_2__ {int core_rev; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_MACCTL_AWAKE ; 
 int /*<<< orphan*/  B43_MACCTL_HWPS ; 
 int /*<<< orphan*/  B43_MMIO_MACCTL ; 
 unsigned int B43_PS_ASLEEP ; 
 unsigned int B43_PS_AWAKE ; 
 unsigned int B43_PS_DISABLED ; 
 unsigned int B43_PS_ENABLED ; 
 int /*<<< orphan*/  B43_SHM_SHARED ; 
 int /*<<< orphan*/  B43_SHM_SH_UCODESTAT ; 
 scalar_t__ B43_SHM_SH_UCODESTAT_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(struct b43_wldev *dev, unsigned int ps_flags)
{
	u32 macctl;
	u16 ucstat;
	bool hwps;
	bool awake;
	int i;

	FUNC0((ps_flags & B43_PS_ENABLED) &&
		    (ps_flags & B43_PS_DISABLED));
	FUNC0((ps_flags & B43_PS_AWAKE) && (ps_flags & B43_PS_ASLEEP));

	if (ps_flags & B43_PS_ENABLED) {
		hwps = true;
	} else if (ps_flags & B43_PS_DISABLED) {
		hwps = false;
	} else {
		//TODO: If powersave is not off and FIXME is not set and we are not in adhoc
		//      and thus is not an AP and we are associated, set bit 25
	}
	if (ps_flags & B43_PS_AWAKE) {
		awake = true;
	} else if (ps_flags & B43_PS_ASLEEP) {
		awake = false;
	} else {
		//TODO: If the device is awake or this is an AP, or we are scanning, or FIXME,
		//      or we are associated, or FIXME, or the latest PS-Poll packet sent was
		//      successful, set bit26
	}

/* FIXME: For now we force awake-on and hwps-off */
	hwps = false;
	awake = true;

	macctl = FUNC1(dev, B43_MMIO_MACCTL);
	if (hwps)
		macctl |= B43_MACCTL_HWPS;
	else
		macctl &= ~B43_MACCTL_HWPS;
	if (awake)
		macctl |= B43_MACCTL_AWAKE;
	else
		macctl &= ~B43_MACCTL_AWAKE;
	FUNC3(dev, B43_MMIO_MACCTL, macctl);
	/* Commit write */
	FUNC1(dev, B43_MMIO_MACCTL);
	if (awake && dev->dev->core_rev >= 5) {
		/* Wait for the microcode to wake up. */
		for (i = 0; i < 100; i++) {
			ucstat = FUNC2(dev, B43_SHM_SHARED,
						B43_SHM_SH_UCODESTAT);
			if (ucstat != B43_SHM_SH_UCODESTAT_SLEEP)
				break;
			FUNC4(10);
		}
	}
}