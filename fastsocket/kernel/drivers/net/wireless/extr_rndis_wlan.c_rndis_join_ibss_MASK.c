#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wiphy {int dummy; } ;
struct usbnet {int /*<<< orphan*/  net; } ;
struct rndis_wlan_private {struct usbnet* usbdev; } ;
struct net_device {int dummy; } ;
struct ndis_80211_ssid {int /*<<< orphan*/  essid; int /*<<< orphan*/  length; } ;
struct ieee80211_channel {int /*<<< orphan*/  center_freq; } ;
struct TYPE_2__ {struct ieee80211_channel* chan; } ;
struct cfg80211_ibss_params {int ssid_len; int /*<<< orphan*/  ssid; int /*<<< orphan*/  bssid; int /*<<< orphan*/  privacy; TYPE_1__ chandef; } ;
typedef  int /*<<< orphan*/  ssid ;
typedef  enum nl80211_auth_type { ____Placeholder_nl80211_auth_type } nl80211_auth_type ;

/* Variables and functions */
 int /*<<< orphan*/  NDIS_80211_INFRA_ADHOC ; 
 int NDIS_802_11_LENGTH_SSID ; 
 int NL80211_AUTHTYPE_OPEN_SYSTEM ; 
 int NL80211_AUTHTYPE_SHARED_KEY ; 
 int RNDIS_WLAN_ALG_NONE ; 
 int RNDIS_WLAN_ALG_WEP ; 
 int /*<<< orphan*/  RNDIS_WLAN_KEY_MGMT_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ndis_80211_ssid*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC10 (struct usbnet*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct usbnet*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct usbnet*,int) ; 
 int FUNC13 (struct usbnet*,int,int) ; 
 int FUNC14 (struct usbnet*,struct ndis_80211_ssid*) ; 
 int FUNC15 (struct usbnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC17 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC18 (struct usbnet*) ; 
 struct rndis_wlan_private* FUNC19 (struct wiphy*) ; 

__attribute__((used)) static int FUNC20(struct wiphy *wiphy, struct net_device *dev,
					struct cfg80211_ibss_params *params)
{
	struct rndis_wlan_private *priv = FUNC19(wiphy);
	struct usbnet *usbdev = priv->usbdev;
	struct ieee80211_channel *channel = params->chandef.chan;
	struct ndis_80211_ssid ssid;
	enum nl80211_auth_type auth_type;
	int ret, alg, length, chan = -1;

	if (channel)
		chan = FUNC3(channel->center_freq);

	/* TODO: How to handle ad-hoc encryption?
	 * connect() has *key, join_ibss() doesn't. RNDIS requires key to be
	 * pre-shared for encryption (open/shared/wpa), is key set before
	 * join_ibss? Which auth_type to use (not in params)? What about WPA?
	 */
	if (params->privacy) {
		auth_type = NL80211_AUTHTYPE_SHARED_KEY;
		alg = RNDIS_WLAN_ALG_WEP;
	} else {
		auth_type = NL80211_AUTHTYPE_OPEN_SYSTEM;
		alg = RNDIS_WLAN_ALG_NONE;
	}

	FUNC9(usbdev->net, "cfg80211.join_ibss('%.32s':[%pM]:%d:%d)\n",
		   params->ssid, params->bssid, chan, params->privacy);

	if (FUNC4(usbdev))
		FUNC2(usbdev, false);

	ret = FUNC15(usbdev, NDIS_80211_INFRA_ADHOC);
	if (ret < 0) {
		FUNC9(usbdev->net, "join_ibss: set_infra_mode failed, %d\n",
			   ret);
		goto err_turn_radio_on;
	}

	ret = FUNC10(usbdev, 0, auth_type, RNDIS_WLAN_KEY_MGMT_NONE);
	if (ret < 0) {
		FUNC9(usbdev->net, "join_ibss: set_auth_mode failed, %d\n",
			   ret);
		goto err_turn_radio_on;
	}

	FUNC16(usbdev);

	ret = FUNC13(usbdev, alg, RNDIS_WLAN_ALG_NONE);
	if (ret < 0) {
		FUNC9(usbdev->net, "join_ibss: set_encr_mode failed, %d\n",
			   ret);
		goto err_turn_radio_on;
	}

	if (channel) {
		ret = FUNC12(usbdev, chan);
		if (ret < 0) {
			FUNC9(usbdev->net, "join_ibss: set_channel failed, %d\n",
				   ret);
			goto err_turn_radio_on;
		}
	}

	if (params->bssid && !FUNC6(params->bssid) &&
				!FUNC5(params->bssid)) {
		ret = FUNC11(usbdev, params->bssid);
		if (ret < 0) {
			FUNC9(usbdev->net, "join_ibss: set_bssid failed, %d\n",
				   ret);
			goto err_turn_radio_on;
		}
	} else
		FUNC0(usbdev);

	length = params->ssid_len;
	if (length > NDIS_802_11_LENGTH_SSID)
		length = NDIS_802_11_LENGTH_SSID;

	FUNC8(&ssid, 0, sizeof(ssid));
	ssid.length = FUNC1(length);
	FUNC7(ssid.essid, params->ssid, length);

	/* Don't need to pause rx queue for ad-hoc. */
	FUNC17(usbdev);
	FUNC18(usbdev);

	ret = FUNC14(usbdev, &ssid);
	if (ret < 0)
		FUNC9(usbdev->net, "join_ibss: set_essid failed, %d\n",
			   ret);
	return ret;

err_turn_radio_on:
	FUNC2(usbdev, true);

	return ret;
}