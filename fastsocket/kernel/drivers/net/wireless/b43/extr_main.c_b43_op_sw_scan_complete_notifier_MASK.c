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
struct ieee80211_hw {int dummy; } ;
struct b43_wldev {int dummy; } ;
struct b43_wl {int /*<<< orphan*/  mutex; struct b43_wldev* current_dev; } ;

/* Variables and functions */
 int B43_HF_SKCFPUP ; 
 scalar_t__ B43_STAT_INITIALIZED ; 
 int FUNC0 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int) ; 
 scalar_t__ FUNC2 (struct b43_wldev*) ; 
 struct b43_wl* FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *hw)
{
	struct b43_wl *wl = FUNC3(hw);
	struct b43_wldev *dev;

	FUNC4(&wl->mutex);
	dev = wl->current_dev;
	if (dev && (FUNC2(dev) >= B43_STAT_INITIALIZED)) {
		/* Re-enable CFP update. */
		FUNC1(dev, FUNC0(dev) & ~B43_HF_SKCFPUP);
	}
	FUNC5(&wl->mutex);
}