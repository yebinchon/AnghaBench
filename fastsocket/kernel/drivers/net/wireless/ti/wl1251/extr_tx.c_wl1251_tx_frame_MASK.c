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
typedef  scalar_t__ u8 ;
struct wl1251 {scalar_t__ default_key; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {TYPE_2__* hw_key; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct TYPE_4__ {scalar_t__ hw_key_idx; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct wl1251*,scalar_t__) ; 
 int FUNC3 (struct wl1251*,struct sk_buff*,struct ieee80211_tx_info*) ; 
 int FUNC4 (struct wl1251*) ; 
 int FUNC5 (struct wl1251*,struct sk_buff*,struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct wl1251*) ; 

__attribute__((used)) static int FUNC7(struct wl1251 *wl, struct sk_buff *skb)
{
	struct ieee80211_tx_info *info;
	int ret = 0;
	u8 idx;

	info = FUNC0(skb);

	if (info->control.hw_key) {
		idx = info->control.hw_key->hw_key_idx;
		if (FUNC1(wl->default_key != idx)) {
			ret = FUNC2(wl, idx);
			if (ret < 0)
				return ret;
		}
	}

	ret = FUNC4(wl);
	if (ret < 0)
		return ret;

	ret = FUNC3(wl, skb, info);
	if (ret < 0)
		return ret;

	ret = FUNC5(wl, skb, info);
	if (ret < 0)
		return ret;

	FUNC6(wl);

	return ret;
}