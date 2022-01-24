#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct b43_wldev {int /*<<< orphan*/  wl; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_BAND_2GHZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC1(struct b43_wldev *dev)
{
	if (FUNC0(dev->wl) == IEEE80211_BAND_2GHZ)
		return 1;
	return 36;
}