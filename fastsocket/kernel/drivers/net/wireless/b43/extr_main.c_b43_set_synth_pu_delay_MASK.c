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
struct TYPE_2__ {scalar_t__ type; int radio_ver; int radio_rev; } ;
struct b43_wldev {TYPE_1__ phy; int /*<<< orphan*/  wl; } ;

/* Variables and functions */
 scalar_t__ B43_PHYTYPE_A ; 
 int /*<<< orphan*/  B43_SHM_SHARED ; 
 int /*<<< orphan*/  B43_SHM_SH_SPUWKUP ; 
 int /*<<< orphan*/  NL80211_IFTYPE_ADHOC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct b43_wldev *dev, bool idle)
{
	u16 pu_delay;

	/* The time value is in microseconds. */
	if (dev->phy.type == B43_PHYTYPE_A)
		pu_delay = 3700;
	else
		pu_delay = 1050;
	if (FUNC0(dev->wl, NL80211_IFTYPE_ADHOC) || idle)
		pu_delay = 500;
	if ((dev->phy.radio_ver == 0x2050) && (dev->phy.radio_rev == 8))
		pu_delay = FUNC2(pu_delay, (u16)2400);

	FUNC1(dev, B43_SHM_SHARED, B43_SHM_SH_SPUWKUP, pu_delay);
}