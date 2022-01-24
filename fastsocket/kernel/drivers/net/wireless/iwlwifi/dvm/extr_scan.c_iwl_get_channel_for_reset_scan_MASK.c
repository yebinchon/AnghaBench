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
typedef  scalar_t__ u16 ;
struct iwl_scan_channel {int dsp_atten; int tx_gain; void* passive_dwell; void* active_dwell; int /*<<< orphan*/  type; void* channel; } ;
struct iwl_priv {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_supported_band {int dummy; } ;
typedef  enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;

/* Variables and functions */
 int IEEE80211_BAND_5GHZ ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 scalar_t__ IWL_RADIO_RESET_DWELL_TIME ; 
 int /*<<< orphan*/  SCAN_CHANNEL_TYPE_PASSIVE ; 
 void* FUNC1 (scalar_t__) ; 
 struct ieee80211_supported_band* FUNC2 (struct iwl_priv*,int) ; 
 scalar_t__ FUNC3 (struct iwl_priv*,int) ; 

__attribute__((used)) static int FUNC4(struct iwl_priv *priv,
					  struct ieee80211_vif *vif,
					  enum ieee80211_band band,
					  struct iwl_scan_channel *scan_ch)
{
	const struct ieee80211_supported_band *sband;
	u16 channel;

	sband = FUNC2(priv, band);
	if (!sband) {
		FUNC0(priv, "invalid band\n");
		return 0;
	}

	channel = FUNC3(priv, band);
	if (channel) {
		scan_ch->channel = FUNC1(channel);
		scan_ch->type = SCAN_CHANNEL_TYPE_PASSIVE;
		scan_ch->active_dwell =
			FUNC1(IWL_RADIO_RESET_DWELL_TIME);
		scan_ch->passive_dwell =
			FUNC1(IWL_RADIO_RESET_DWELL_TIME);
		/* Set txpower levels to defaults */
		scan_ch->dsp_atten = 110;
		if (band == IEEE80211_BAND_5GHZ)
			scan_ch->tx_gain = ((1 << 5) | (3 << 3)) | 3;
		else
			scan_ch->tx_gain = ((1 << 5) | (5 << 3));
		return 1;
	}

	FUNC0(priv, "no valid channel found\n");
	return 0;
}