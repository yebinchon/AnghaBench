#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  name; TYPE_1__* ieee80211_ptr; } ;
struct TYPE_4__ {TYPE_2__* wiphy; int /*<<< orphan*/  iftype; } ;
struct libipw_device {int open_wep; int host_encrypt; int host_decrypt; int host_mc_decrypt; int host_open_frag; int ieee802_1x; TYPE_1__ wdev; scalar_t__ privacy_invoked; scalar_t__ drop_unencrypted; scalar_t__ wpa_enabled; int /*<<< orphan*/  lock; int /*<<< orphan*/  crypt_info; int /*<<< orphan*/  scan_age; void* rts; void* fts; struct net_device* dev; } ;
struct TYPE_5__ {int max_scan_ssids; int interface_modes; scalar_t__ max_scan_ie_len; int /*<<< orphan*/  privid; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* DEFAULT_FTS ; 
 int /*<<< orphan*/  DEFAULT_MAX_SCAN_AGE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 struct net_device* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  libipw_config_ops ; 
 int FUNC6 (struct libipw_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct libipw_device*) ; 
 int /*<<< orphan*/  libipw_wiphy_privid ; 
 struct libipw_device* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct net_device *FUNC12(int sizeof_priv, int monitor)
{
	struct libipw_device *ieee;
	struct net_device *dev;
	int err;

	FUNC1("Initializing...\n");

	dev = FUNC3(sizeof(struct libipw_device) + sizeof_priv);
	if (!dev)
		goto failed;

	ieee = FUNC8(dev);

	ieee->dev = dev;

	if (!monitor) {
		ieee->wdev.wiphy = FUNC11(&libipw_config_ops, 0);
		if (!ieee->wdev.wiphy) {
			FUNC2("Unable to allocate wiphy.\n");
			goto failed_free_netdev;
		}

		ieee->dev->ieee80211_ptr = &ieee->wdev;
		ieee->wdev.iftype = NL80211_IFTYPE_STATION;

		/* Fill-out wiphy structure bits we know...  Not enough info
		   here to call set_wiphy_dev or set MAC address or channel info
		   -- have to do that in ->ndo_init... */
		ieee->wdev.wiphy->privid = libipw_wiphy_privid;

		ieee->wdev.wiphy->max_scan_ssids = 1;
		ieee->wdev.wiphy->max_scan_ie_len = 0;
		ieee->wdev.wiphy->interface_modes = FUNC0(NL80211_IFTYPE_STATION)
						| FUNC0(NL80211_IFTYPE_ADHOC);
	}

	err = FUNC6(ieee);
	if (err) {
		FUNC2("Unable to allocate beacon storage: %d\n", err);
		goto failed_free_wiphy;
	}
	FUNC7(ieee);

	/* Default fragmentation threshold is maximum payload size */
	ieee->fts = DEFAULT_FTS;
	ieee->rts = DEFAULT_FTS;
	ieee->scan_age = DEFAULT_MAX_SCAN_AGE;
	ieee->open_wep = 1;

	/* Default to enabling full open WEP with host based encrypt/decrypt */
	ieee->host_encrypt = 1;
	ieee->host_decrypt = 1;
	ieee->host_mc_decrypt = 1;

	/* Host fragmentation in Open mode. Default is enabled.
	 * Note: host fragmentation is always enabled if host encryption
	 * is enabled. For cards can do hardware encryption, they must do
	 * hardware fragmentation as well. So we don't need a variable
	 * like host_enc_frag. */
	ieee->host_open_frag = 1;
	ieee->ieee802_1x = 1;	/* Default to supporting 802.1x */

	FUNC9(&ieee->lock);

	FUNC5(&ieee->crypt_info, dev->name, &ieee->lock);

	ieee->wpa_enabled = 0;
	ieee->drop_unencrypted = 0;
	ieee->privacy_invoked = 0;

	return dev;

failed_free_wiphy:
	if (!monitor)
		FUNC10(ieee->wdev.wiphy);
failed_free_netdev:
	FUNC4(dev);
failed:
	return NULL;
}