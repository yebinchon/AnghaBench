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
struct rt2x00_intf {int /*<<< orphan*/  beacon_skb_mutex; } ;
struct rt2x00_dev {int dummy; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct rt2x00_dev*,struct ieee80211_vif*) ; 
 struct rt2x00_intf* FUNC3 (struct ieee80211_vif*) ; 

int FUNC4(struct rt2x00_dev *rt2x00dev,
			      struct ieee80211_vif *vif)
{
	struct rt2x00_intf *intf = FUNC3(vif);
	int ret;

	FUNC0(&intf->beacon_skb_mutex);
	ret = FUNC2(rt2x00dev, vif);
	FUNC1(&intf->beacon_skb_mutex);

	return ret;
}