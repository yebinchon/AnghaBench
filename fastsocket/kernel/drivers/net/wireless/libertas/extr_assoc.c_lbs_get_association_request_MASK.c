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
struct TYPE_2__ {int /*<<< orphan*/ * bssid; int /*<<< orphan*/  band; int /*<<< orphan*/  channel; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;
struct lbs_private {int /*<<< orphan*/  wpa_ie_len; int /*<<< orphan*/  wpa_ie; int /*<<< orphan*/  secinfo; int /*<<< orphan*/  wpa_unicast_key; int /*<<< orphan*/  wpa_mcast_key; int /*<<< orphan*/  wep_tx_keyidx; int /*<<< orphan*/ * wep_keys; TYPE_1__ curbssparams; int /*<<< orphan*/  mode; struct assoc_request* pending_assoc_req; } ;
struct lbs_802_11_security {int dummy; } ;
struct enc_key {int dummy; } ;
struct assoc_request {int /*<<< orphan*/  wpa_ie_len; int /*<<< orphan*/  wpa_ie; int /*<<< orphan*/  flags; int /*<<< orphan*/  secinfo; int /*<<< orphan*/  wpa_unicast_key; int /*<<< orphan*/  wpa_mcast_key; int /*<<< orphan*/  wep_tx_keyidx; int /*<<< orphan*/ * wep_keys; int /*<<< orphan*/  bssid; int /*<<< orphan*/  mode; int /*<<< orphan*/  band; int /*<<< orphan*/  channel; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASSOC_FLAG_BAND ; 
 int /*<<< orphan*/  ASSOC_FLAG_BSSID ; 
 int /*<<< orphan*/  ASSOC_FLAG_CHANNEL ; 
 int /*<<< orphan*/  ASSOC_FLAG_MODE ; 
 int /*<<< orphan*/  ASSOC_FLAG_SECINFO ; 
 int /*<<< orphan*/  ASSOC_FLAG_SSID ; 
 int /*<<< orphan*/  ASSOC_FLAG_WEP_KEYS ; 
 int /*<<< orphan*/  ASSOC_FLAG_WEP_TX_KEYIDX ; 
 int /*<<< orphan*/  ASSOC_FLAG_WPA_IE ; 
 int /*<<< orphan*/  ASSOC_FLAG_WPA_MCAST_KEY ; 
 int /*<<< orphan*/  ASSOC_FLAG_WPA_UCAST_KEY ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IW_ESSID_MAX_SIZE ; 
 int /*<<< orphan*/  LBS_DEB_ASSOC ; 
 int MAX_WPA_IE_LEN ; 
 struct assoc_request* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct assoc_request *FUNC6(struct lbs_private *priv)
{
	struct assoc_request * assoc_req;

	FUNC1(LBS_DEB_ASSOC);
	if (!priv->pending_assoc_req) {
		priv->pending_assoc_req = FUNC0(sizeof(struct assoc_request),
		                                     GFP_KERNEL);
		if (!priv->pending_assoc_req) {
			FUNC3("Not enough memory to allocate association"
				" request!\n");
			return NULL;
		}
	}

	/* Copy current configuration attributes to the association request,
	 * but don't overwrite any that are already set.
	 */
	assoc_req = priv->pending_assoc_req;
	if (!FUNC5(ASSOC_FLAG_SSID, &assoc_req->flags)) {
		FUNC4(&assoc_req->ssid, &priv->curbssparams.ssid,
		       IW_ESSID_MAX_SIZE);
		assoc_req->ssid_len = priv->curbssparams.ssid_len;
	}

	if (!FUNC5(ASSOC_FLAG_CHANNEL, &assoc_req->flags))
		assoc_req->channel = priv->curbssparams.channel;

	if (!FUNC5(ASSOC_FLAG_BAND, &assoc_req->flags))
		assoc_req->band = priv->curbssparams.band;

	if (!FUNC5(ASSOC_FLAG_MODE, &assoc_req->flags))
		assoc_req->mode = priv->mode;

	if (!FUNC5(ASSOC_FLAG_BSSID, &assoc_req->flags)) {
		FUNC4(&assoc_req->bssid, priv->curbssparams.bssid,
			ETH_ALEN);
	}

	if (!FUNC5(ASSOC_FLAG_WEP_KEYS, &assoc_req->flags)) {
		int i;
		for (i = 0; i < 4; i++) {
			FUNC4(&assoc_req->wep_keys[i], &priv->wep_keys[i],
				sizeof(struct enc_key));
		}
	}

	if (!FUNC5(ASSOC_FLAG_WEP_TX_KEYIDX, &assoc_req->flags))
		assoc_req->wep_tx_keyidx = priv->wep_tx_keyidx;

	if (!FUNC5(ASSOC_FLAG_WPA_MCAST_KEY, &assoc_req->flags)) {
		FUNC4(&assoc_req->wpa_mcast_key, &priv->wpa_mcast_key,
			sizeof(struct enc_key));
	}

	if (!FUNC5(ASSOC_FLAG_WPA_UCAST_KEY, &assoc_req->flags)) {
		FUNC4(&assoc_req->wpa_unicast_key, &priv->wpa_unicast_key,
			sizeof(struct enc_key));
	}

	if (!FUNC5(ASSOC_FLAG_SECINFO, &assoc_req->flags)) {
		FUNC4(&assoc_req->secinfo, &priv->secinfo,
			sizeof(struct lbs_802_11_security));
	}

	if (!FUNC5(ASSOC_FLAG_WPA_IE, &assoc_req->flags)) {
		FUNC4(&assoc_req->wpa_ie, &priv->wpa_ie,
			MAX_WPA_IE_LEN);
		assoc_req->wpa_ie_len = priv->wpa_ie_len;
	}

	FUNC2(LBS_DEB_ASSOC);
	return assoc_req;
}