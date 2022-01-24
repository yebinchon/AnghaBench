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
struct TYPE_4__ {scalar_t__ rssi; } ;
struct libipw_network {int capability; scalar_t__ ssid_len; scalar_t__ last_associate; scalar_t__ last_scanned; scalar_t__ channel; int /*<<< orphan*/  bssid; int /*<<< orphan*/  ssid; int /*<<< orphan*/  mode; TYPE_1__ stats; } ;
struct ipw_supported_rates {scalar_t__ num_rates; } ;
struct ipw_priv {int config; scalar_t__ essid_len; scalar_t__ channel; int capability; TYPE_2__* ieee; int /*<<< orphan*/  bssid; int /*<<< orphan*/  essid; } ;
struct ipw_network_match {struct libipw_network* network; int /*<<< orphan*/  rates; } ;
typedef  int /*<<< orphan*/  escaped ;
struct TYPE_5__ {scalar_t__ iw_mode; scalar_t__ scan_age; } ;

/* Variables and functions */
 int CAP_PRIVACY_ON ; 
 int CFG_STATIC_BSSID ; 
 int CFG_STATIC_CHANNEL ; 
 int CFG_STATIC_ESSID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ETH_ALEN ; 
 unsigned long HZ ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ,...) ; 
 int IW_ESSID_MAX_SIZE ; 
 scalar_t__ IW_MODE_ADHOC ; 
 scalar_t__ IW_MODE_INFRA ; 
 int WLAN_CAPABILITY_ESS ; 
 int WLAN_CAPABILITY_IBSS ; 
 int WLAN_CAPABILITY_PRIVACY ; 
 int /*<<< orphan*/  FUNC2 (struct ipw_priv*,struct libipw_network*,struct ipw_supported_rates*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ipw_supported_rates*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ssid ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct ipw_priv *priv,
			    struct ipw_network_match *match,
			    struct libipw_network *network, int roaming)
{
	struct ipw_supported_rates rates;
	FUNC0(ssid);

	/* Verify that this network's capability is compatible with the
	 * current mode (AdHoc or Infrastructure) */
	if ((priv->ieee->iw_mode == IW_MODE_INFRA &&
	     !(network->capability & WLAN_CAPABILITY_ESS)) ||
	    (priv->ieee->iw_mode == IW_MODE_ADHOC &&
	     !(network->capability & WLAN_CAPABILITY_IBSS))) {
		FUNC1("Network '%s (%pM)' excluded due to "
				"capability mismatch.\n",
				FUNC9(ssid, network->ssid,
					   network->ssid_len),
				network->bssid);
		return 0;
	}

	if (FUNC12(roaming)) {
		/* If we are roaming, then ensure check if this is a valid
		 * network to try and roam to */
		if ((network->ssid_len != match->network->ssid_len) ||
		    FUNC7(network->ssid, match->network->ssid,
			   network->ssid_len)) {
			FUNC1("Network '%s (%pM)' excluded "
					"because of non-network ESSID.\n",
					FUNC9(ssid, network->ssid,
						   network->ssid_len),
					network->bssid);
			return 0;
		}
	} else {
		/* If an ESSID has been configured then compare the broadcast
		 * ESSID to ours */
		if ((priv->config & CFG_STATIC_ESSID) &&
		    ((network->ssid_len != priv->essid_len) ||
		     FUNC7(network->ssid, priv->essid,
			    FUNC8(network->ssid_len, priv->essid_len)))) {
			char escaped[IW_ESSID_MAX_SIZE * 2 + 1];
			FUNC10(escaped,
				FUNC9(ssid, network->ssid,
					   network->ssid_len),
				sizeof(escaped));
			FUNC1("Network '%s (%pM)' excluded "
					"because of ESSID mismatch: '%s'.\n",
					escaped, network->bssid,
					FUNC9(ssid, priv->essid,
						   priv->essid_len));
			return 0;
		}
	}

	/* If the old network rate is better than this one, don't bother
	 * testing everything else. */
	if (match->network && match->network->stats.rssi > network->stats.rssi) {
		char escaped[IW_ESSID_MAX_SIZE * 2 + 1];
		FUNC10(escaped,
			FUNC9(ssid, network->ssid, network->ssid_len),
			sizeof(escaped));
		FUNC1("Network '%s (%pM)' excluded because "
				"'%s (%pM)' has a stronger signal.\n",
				escaped, network->bssid,
				FUNC9(ssid, match->network->ssid,
					   match->network->ssid_len),
				match->network->bssid);
		return 0;
	}

	/* If this network has already had an association attempt within the
	 * last 3 seconds, do not try and associate again... */
	if (network->last_associate &&
	    FUNC11(network->last_associate + (HZ * 3UL), jiffies)) {
		FUNC1("Network '%s (%pM)' excluded "
				"because of storming (%ums since last "
				"assoc attempt).\n",
				FUNC9(ssid, network->ssid,
					   network->ssid_len),
				network->bssid,
				FUNC4(jiffies -
						 network->last_associate));
		return 0;
	}

	/* Now go through and see if the requested network is valid... */
	if (priv->ieee->scan_age != 0 &&
	    FUNC11(jiffies, network->last_scanned + priv->ieee->scan_age)) {
		FUNC1("Network '%s (%pM)' excluded "
				"because of age: %ums.\n",
				FUNC9(ssid, network->ssid,
					   network->ssid_len),
				network->bssid,
				FUNC4(jiffies -
						 network->last_scanned));
		return 0;
	}

	if ((priv->config & CFG_STATIC_CHANNEL) &&
	    (network->channel != priv->channel)) {
		FUNC1("Network '%s (%pM)' excluded "
				"because of channel mismatch: %d != %d.\n",
				FUNC9(ssid, network->ssid,
					   network->ssid_len),
				network->bssid,
				network->channel, priv->channel);
		return 0;
	}

	/* Verify privacy compatibility */
	if (((priv->capability & CAP_PRIVACY_ON) ? 1 : 0) !=
	    ((network->capability & WLAN_CAPABILITY_PRIVACY) ? 1 : 0)) {
		FUNC1("Network '%s (%pM)' excluded "
				"because of privacy mismatch: %s != %s.\n",
				FUNC9(ssid, network->ssid,
					   network->ssid_len),
				network->bssid,
				priv->capability & CAP_PRIVACY_ON ? "on" :
				"off",
				network->capability &
				WLAN_CAPABILITY_PRIVACY ? "on" : "off");
		return 0;
	}

	if ((priv->config & CFG_STATIC_BSSID) &&
	    FUNC7(network->bssid, priv->bssid, ETH_ALEN)) {
		FUNC1("Network '%s (%pM)' excluded "
				"because of BSSID mismatch: %pM.\n",
				FUNC9(ssid, network->ssid,
					   network->ssid_len),
				network->bssid, priv->bssid);
		return 0;
	}

	/* Filter out any incompatible freq / mode combinations */
	if (!FUNC6(priv->ieee, network->mode)) {
		FUNC1("Network '%s (%pM)' excluded "
				"because of invalid frequency/mode "
				"combination.\n",
				FUNC9(ssid, network->ssid,
					   network->ssid_len),
				network->bssid);
		return 0;
	}

	/* Filter out invalid channel in current GEO */
	if (!FUNC5(priv->ieee, network->channel)) {
		FUNC1("Network '%s (%pM)' excluded "
				"because of invalid channel in current GEO\n",
				FUNC9(ssid, network->ssid,
					   network->ssid_len),
				network->bssid);
		return 0;
	}

	/* Ensure that the rates supported by the driver are compatible with
	 * this AP, including verification of basic rates (mandatory) */
	if (!FUNC2(priv, network, &rates)) {
		FUNC1("Network '%s (%pM)' excluded "
				"because configured rate mask excludes "
				"AP mandatory rate.\n",
				FUNC9(ssid, network->ssid,
					   network->ssid_len),
				network->bssid);
		return 0;
	}

	if (rates.num_rates == 0) {
		FUNC1("Network '%s (%pM)' excluded "
				"because of no compatible rates.\n",
				FUNC9(ssid, network->ssid,
					   network->ssid_len),
				network->bssid);
		return 0;
	}

	/* TODO: Perform any further minimal comparititive tests.  We do not
	 * want to put too much policy logic here; intelligent scan selection
	 * should occur within a generic IEEE 802.11 user space tool.  */

	/* Set up 'new' AP to this network */
	FUNC3(&match->rates, &rates);
	match->network = network;

	FUNC1("Network '%s (%pM)' is a viable match.\n",
			FUNC9(ssid, network->ssid, network->ssid_len),
			network->bssid);

	return 1;
}