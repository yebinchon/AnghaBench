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
struct usbnet {int /*<<< orphan*/  net; } ;
struct rndis_wlan_private {scalar_t__ infra_mode; int connected; int /*<<< orphan*/  bssid; int /*<<< orphan*/  work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  work_pending; } ;
struct ndis_80211_assoc_info {int /*<<< orphan*/  offset_resp_ies; int /*<<< orphan*/  resp_ie_length; int /*<<< orphan*/  offset_req_ies; int /*<<< orphan*/  req_ie_length; } ;
typedef  int /*<<< orphan*/  bssid ;

/* Variables and functions */
 int CONTROL_BUFFER_SIZE ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NDIS_80211_INFRA_ADHOC ; 
 scalar_t__ NDIS_80211_INFRA_INFRA ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  WORK_LINK_UP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct usbnet*,struct ndis_80211_assoc_info*,int) ; 
 int FUNC5 (struct usbnet*,int /*<<< orphan*/ *) ; 
 struct rndis_wlan_private* FUNC6 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ndis_80211_assoc_info*) ; 
 struct ndis_80211_assoc_info* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct usbnet*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC17 (struct usbnet*,int /*<<< orphan*/ *,struct ndis_80211_assoc_info*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct usbnet*) ; 

__attribute__((used)) static void FUNC20(struct usbnet *usbdev)
{
	struct rndis_wlan_private *priv = FUNC6(usbdev);
	struct ndis_80211_assoc_info *info = NULL;
	u8 bssid[ETH_ALEN];
	int resp_ie_len, req_ie_len;
	u8 *req_ie, *resp_ie;
	int ret, offset;
	bool roamed = false;
	bool match_bss;

	if (priv->infra_mode == NDIS_80211_INFRA_INFRA && priv->connected) {
		/* received media connect indication while connected, either
		 * device reassociated with same AP or roamed to new. */
		roamed = true;
	}

	req_ie_len = 0;
	resp_ie_len = 0;
	req_ie = NULL;
	resp_ie = NULL;

	if (priv->infra_mode == NDIS_80211_INFRA_INFRA) {
		info = FUNC9(CONTROL_BUFFER_SIZE, GFP_KERNEL);
		if (!info) {
			/* No memory? Try resume work later */
			FUNC18(WORK_LINK_UP, &priv->work_pending);
			FUNC15(priv->workqueue, &priv->work);
			return;
		}

		/* Get association info IEs from device. */
		ret = FUNC4(usbdev, info, CONTROL_BUFFER_SIZE);
		if (!ret) {
			req_ie_len = FUNC10(info->req_ie_length);
			if (req_ie_len > 0) {
				offset = FUNC10(info->offset_req_ies);

				if (offset > CONTROL_BUFFER_SIZE)
					offset = CONTROL_BUFFER_SIZE;

				req_ie = (u8 *)info + offset;

				if (offset + req_ie_len > CONTROL_BUFFER_SIZE)
					req_ie_len =
						CONTROL_BUFFER_SIZE - offset;
			}

			resp_ie_len = FUNC10(info->resp_ie_length);
			if (resp_ie_len > 0) {
				offset = FUNC10(info->offset_resp_ies);

				if (offset > CONTROL_BUFFER_SIZE)
					offset = CONTROL_BUFFER_SIZE;

				resp_ie = (u8 *)info + offset;

				if (offset + resp_ie_len > CONTROL_BUFFER_SIZE)
					resp_ie_len =
						CONTROL_BUFFER_SIZE - offset;
			}
		} else {
			/* Since rndis_wlan_craft_connected_bss() might use info
			 * later and expects info to contain valid data if
			 * non-null, free info and set NULL here.
			 */
			FUNC8(info);
			info = NULL;
		}
	} else if (FUNC0(priv->infra_mode != NDIS_80211_INFRA_ADHOC))
		return;

	ret = FUNC5(usbdev, bssid);
	if (ret < 0)
		FUNC12(bssid, 0, sizeof(bssid));

	FUNC13(usbdev->net, "link up work: [%pM]%s\n",
		   bssid, roamed ? " roamed" : "");

	/* Internal bss list in device should contain at least the currently
	 * connected bss and we can get it to cfg80211 with
	 * rndis_check_bssid_list().
	 *
	 * NDIS spec says: "If the device is associated, but the associated
	 *  BSSID is not in its BSSID scan list, then the driver must add an
	 *  entry for the BSSID at the end of the data that it returns in
	 *  response to query of OID_802_11_BSSID_LIST."
	 *
	 * NOTE: Seems to be true for BCM4320b variant, but not BCM4320a.
	 */
	match_bss = false;
	FUNC16(usbdev, bssid, &match_bss);

	if (!FUNC7(bssid) && !match_bss) {
		/* Couldn't get bss from device, we need to manually craft bss
		 * for cfg80211.
		 */
		FUNC17(usbdev, bssid, info);
	}

	if (priv->infra_mode == NDIS_80211_INFRA_INFRA) {
		if (!roamed)
			FUNC1(usbdev->net, bssid, req_ie,
						req_ie_len, resp_ie,
						resp_ie_len, 0, GFP_KERNEL);
		else
			FUNC3(usbdev->net, NULL, bssid,
					req_ie, req_ie_len,
					resp_ie, resp_ie_len, GFP_KERNEL);
	} else if (priv->infra_mode == NDIS_80211_INFRA_ADHOC)
		FUNC2(usbdev->net, bssid, GFP_KERNEL);

	if (info != NULL)
		FUNC8(info);

	priv->connected = true;
	FUNC11(priv->bssid, bssid, ETH_ALEN);

	FUNC19(usbdev);
	FUNC14(usbdev->net);
}