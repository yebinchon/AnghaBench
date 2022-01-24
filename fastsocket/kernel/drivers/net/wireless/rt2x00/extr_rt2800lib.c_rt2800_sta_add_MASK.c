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
struct rt2x00_sta {int wcid; } ;
struct rt2x00_dev {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int) ; 
 int FUNC3 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,struct ieee80211_vif*) ; 
 struct rt2x00_sta* FUNC5 (struct ieee80211_sta*) ; 

int FUNC6(struct rt2x00_dev *rt2x00dev, struct ieee80211_vif *vif,
		   struct ieee80211_sta *sta)
{
	int wcid;
	struct rt2x00_sta *sta_priv = FUNC5(sta);

	/*
	 * Find next free WCID.
	 */
	wcid = FUNC3(rt2x00dev);

	/*
	 * Store selected wcid even if it is invalid so that we can
	 * later decide if the STA is uploaded into the hw.
	 */
	sta_priv->wcid = wcid;

	/*
	 * No space left in the device, however, we can still communicate
	 * with the STA -> No error.
	 */
	if (wcid < 0)
		return 0;

	/*
	 * Clean up WCID attributes and write STA address to the device.
	 */
	FUNC2(rt2x00dev, wcid);
	FUNC0(rt2x00dev, sta->addr, wcid);
	FUNC1(rt2x00dev, wcid,
				       FUNC4(rt2x00dev, vif));
	return 0;
}