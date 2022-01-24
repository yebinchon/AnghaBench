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
typedef  int /*<<< orphan*/  u8 ;
struct sta_info {int flags; int /*<<< orphan*/  ap; int /*<<< orphan*/  addr; int /*<<< orphan*/  list; } ;
struct net_device {int dummy; } ;
struct ap_data {int /*<<< orphan*/  sta_table_lock; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int EINVAL ; 
 int IEEE80211_FTYPE_MGMT ; 
 int IEEE80211_STYPE_DEAUTH ; 
 int /*<<< orphan*/  WLAN_REASON_PREV_AUTH_NOT_VALID ; 
 int WLAN_STA_ASSOC ; 
 int /*<<< orphan*/  FUNC0 (struct ap_data*,struct sta_info*) ; 
 struct sta_info* FUNC1 (struct ap_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ap_data*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct ap_data *ap, struct net_device *dev, u8 *mac)
{
	struct sta_info *sta;
	__le16 resp;

	FUNC7(&ap->sta_table_lock);
	sta = FUNC1(ap, mac);
	if (sta) {
		FUNC2(ap, sta);
		FUNC5(&sta->list);
	}
	FUNC8(&ap->sta_table_lock);

	if (!sta)
		return -EINVAL;

	resp = FUNC3(WLAN_REASON_PREV_AUTH_NOT_VALID);
	FUNC6(dev, IEEE80211_FTYPE_MGMT | IEEE80211_STYPE_DEAUTH,
			 (char *) &resp, 2, sta->addr, 0);

	if ((sta->flags & WLAN_STA_ASSOC) && !sta->ap)
		FUNC4(dev, sta);

	FUNC0(ap, sta);

	return 0;
}