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
struct ieee80211_low_level_stats {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct b43_wl {int /*<<< orphan*/  mutex; int /*<<< orphan*/  ieee_stats; } ;

/* Variables and functions */
 struct b43_wl* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_low_level_stats*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *hw,
			    struct ieee80211_low_level_stats *stats)
{
	struct b43_wl *wl = FUNC0(hw);

	FUNC2(&wl->mutex);
	FUNC1(stats, &wl->ieee_stats, sizeof(*stats));
	FUNC3(&wl->mutex);

	return 0;
}