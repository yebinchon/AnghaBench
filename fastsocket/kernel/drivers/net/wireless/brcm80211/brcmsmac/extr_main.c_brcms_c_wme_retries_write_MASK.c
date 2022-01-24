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
struct brcms_c_info {int /*<<< orphan*/ * wme_retries; int /*<<< orphan*/  hw; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int IEEE80211_NUM_ACS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct brcms_c_info *wlc)
{
	int ac;

	/* Need clock to do this */
	if (!wlc->clk)
		return;

	for (ac = 0; ac < IEEE80211_NUM_ACS; ac++)
		FUNC1(wlc->hw, FUNC0(ac),
				  wlc->wme_retries[ac]);
}