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
typedef  int /*<<< orphan*/  u16 ;
struct wl12xx_vif {int /*<<< orphan*/  basic_rate_set; int /*<<< orphan*/  role_id; } ;
struct wl1271 {int /*<<< orphan*/  hw; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_TEMPL_PS_POLL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,struct ieee80211_vif*) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ieee80211_vif* FUNC3 (struct wl12xx_vif*) ; 

int FUNC4(struct wl1271 *wl, struct wl12xx_vif *wlvif,
			     u16 aid)
{
	struct ieee80211_vif *vif = FUNC3(wlvif);
	struct sk_buff *skb;
	int ret = 0;

	skb = FUNC1(wl->hw, vif);
	if (!skb)
		goto out;

	ret = FUNC2(wl, wlvif->role_id,
				      CMD_TEMPL_PS_POLL, skb->data,
				      skb->len, 0, wlvif->basic_rate_set);

out:
	FUNC0(skb);
	return ret;
}