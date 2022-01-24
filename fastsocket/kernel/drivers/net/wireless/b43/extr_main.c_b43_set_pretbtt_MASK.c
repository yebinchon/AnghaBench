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
struct TYPE_2__ {scalar_t__ type; } ;
struct b43_wldev {TYPE_1__ phy; int /*<<< orphan*/  wl; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_MMIO_TSF_CFP_PRETBTT ; 
 scalar_t__ B43_PHYTYPE_A ; 
 int /*<<< orphan*/  B43_SHM_SHARED ; 
 int /*<<< orphan*/  B43_SHM_SH_PRETBTT ; 
 int /*<<< orphan*/  NL80211_IFTYPE_ADHOC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct b43_wldev *dev)
{
	u16 pretbtt;

	/* The time value is in microseconds. */
	if (FUNC0(dev->wl, NL80211_IFTYPE_ADHOC)) {
		pretbtt = 2;
	} else {
		if (dev->phy.type == B43_PHYTYPE_A)
			pretbtt = 120;
		else
			pretbtt = 250;
	}
	FUNC1(dev, B43_SHM_SHARED, B43_SHM_SH_PRETBTT, pretbtt);
	FUNC2(dev, B43_MMIO_TSF_CFP_PRETBTT, pretbtt);
}