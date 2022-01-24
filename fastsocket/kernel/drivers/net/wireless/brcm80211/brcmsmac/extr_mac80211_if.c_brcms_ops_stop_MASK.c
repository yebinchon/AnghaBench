#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_hw {struct brcms_info* priv; } ;
struct brcms_info {int /*<<< orphan*/  lock; TYPE_2__* wlc; } ;
struct TYPE_4__ {TYPE_1__* hw; } ;
struct TYPE_3__ {int /*<<< orphan*/  d11core; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *hw)
{
	struct brcms_info *wl = hw->priv;
	int status;

	FUNC3(hw);

	if (wl->wlc == NULL)
		return;

	FUNC4(&wl->lock);
	status = FUNC0(wl->wlc->hw->d11core);
	FUNC5(&wl->lock);
	if (!status) {
		FUNC2(wl->wlc->hw->d11core,
			  "wl: brcms_ops_stop: chipmatch failed\n");
		return;
	}

	/* put driver in down state */
	FUNC4(&wl->lock);
	FUNC1(wl);
	FUNC5(&wl->lock);
}