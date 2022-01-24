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
struct p54_common {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; } ;
struct ieee80211_hw {struct p54_common* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct p54_common*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct ieee80211_hw *hw,
			      struct ieee80211_vif *vif,
			      struct ieee80211_sta *sta)
{
	struct p54_common *priv = hw->priv;

	/*
	 * Notify the firmware that we don't want or we don't
	 * need to buffer frames for this station anymore.
	 */

	FUNC0(priv, sta->addr);

	return 0;
}