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
struct libipw_rx_stats {scalar_t__ freq; scalar_t__ len; int /*<<< orphan*/  received_channel; } ;
struct TYPE_4__ {struct libipw_rx_stats* addr3; } ;
struct libipw_probe_response {int /*<<< orphan*/  info_element; int /*<<< orphan*/  beacon_interval; int /*<<< orphan*/ * time_stamp; int /*<<< orphan*/  capability; TYPE_2__ header; } ;
struct TYPE_3__ {scalar_t__ old_param_count; scalar_t__ param_count; scalar_t__ supported; scalar_t__ active; } ;
struct libipw_network {int capability; int listen_interval; int flags; int erp_value; int /*<<< orphan*/  stats; int /*<<< orphan*/ * bssid; scalar_t__ ssid_len; int /*<<< orphan*/  ssid; int /*<<< orphan*/  mode; scalar_t__ rsn_ie_len; scalar_t__ wpa_ie_len; int /*<<< orphan*/  channel; scalar_t__ atim_window; scalar_t__ last_associate; scalar_t__ rates_ex_len; scalar_t__ rates_len; void* beacon_interval; void** time_stamp; int /*<<< orphan*/  last_scanned; TYPE_1__ qos_data; } ;
struct libipw_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  IEEE_A ; 
 int /*<<< orphan*/  IEEE_B ; 
 int /*<<< orphan*/  IEEE_G ; 
 scalar_t__ LIBIPW_52GHZ_BAND ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int NETWORK_HAS_CCK ; 
 int NETWORK_HAS_OFDM ; 
 int WLAN_CAPABILITY_IBSS ; 
 int /*<<< orphan*/  jiffies ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,struct libipw_network*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct libipw_rx_stats*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ssid ; 

__attribute__((used)) static int FUNC7(struct libipw_device *ieee, struct libipw_probe_response
					 *beacon,
					 struct libipw_network *network,
					 struct libipw_rx_stats *stats)
{
	FUNC0(ssid);

	network->qos_data.active = 0;
	network->qos_data.supported = 0;
	network->qos_data.param_count = 0;
	network->qos_data.old_param_count = 0;

	/* Pull out fixed field data */
	FUNC5(network->bssid, beacon->header.addr3, ETH_ALEN);
	network->capability = FUNC2(beacon->capability);
	network->last_scanned = jiffies;
	network->time_stamp[0] = FUNC3(beacon->time_stamp[0]);
	network->time_stamp[1] = FUNC3(beacon->time_stamp[1]);
	network->beacon_interval = FUNC2(beacon->beacon_interval);
	/* Where to pull this? beacon->listen_interval; */
	network->listen_interval = 0x0A;
	network->rates_len = network->rates_ex_len = 0;
	network->last_associate = 0;
	network->ssid_len = 0;
	network->flags = 0;
	network->atim_window = 0;
	network->erp_value = (network->capability & WLAN_CAPABILITY_IBSS) ?
	    0x3 : 0x0;

	if (stats->freq == LIBIPW_52GHZ_BAND) {
		/* for A band (No DS info) */
		network->channel = stats->received_channel;
	} else
		network->flags |= NETWORK_HAS_CCK;

	network->wpa_ie_len = 0;
	network->rsn_ie_len = 0;

	if (FUNC4
	    (beacon->info_element, stats->len - sizeof(*beacon), network))
		return 1;

	network->mode = 0;
	if (stats->freq == LIBIPW_52GHZ_BAND)
		network->mode = IEEE_A;
	else {
		if (network->flags & NETWORK_HAS_OFDM)
			network->mode |= IEEE_G;
		if (network->flags & NETWORK_HAS_CCK)
			network->mode |= IEEE_B;
	}

	if (network->mode == 0) {
		FUNC1("Filtered out '%s (%pM)' "
				     "network.\n",
				     FUNC6(ssid, network->ssid,
						 network->ssid_len),
				     network->bssid);
		return 1;
	}

	FUNC5(&network->stats, stats, sizeof(network->stats));

	return 0;
}