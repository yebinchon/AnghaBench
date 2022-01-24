#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hw_mode_spec {int supported_rates; int num_channels; struct channel_info* channels_info; void* channels; int /*<<< orphan*/  supported_bands; } ;
struct rt2x00_dev {TYPE_1__* hw; int /*<<< orphan*/  dev; struct hw_mode_spec spec; } ;
struct channel_info {int /*<<< orphan*/  default_power1; void* max_power; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  DEFAULT_TXPOWER ; 
 int /*<<< orphan*/  EEPROM_MAC_ADDR_0 ; 
 int /*<<< orphan*/  EEPROM_TXPOWER_START ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IEEE80211_HW_PS_NULLFUNC_STACK ; 
 int IEEE80211_HW_RX_INCLUDES_FCS ; 
 int IEEE80211_HW_SIGNAL_DBM ; 
 int IEEE80211_HW_SUPPORTS_PS ; 
 void* MAX_TXPOWER ; 
 int /*<<< orphan*/  RF2522 ; 
 int /*<<< orphan*/  RF2523 ; 
 int /*<<< orphan*/  RF2524 ; 
 int /*<<< orphan*/  RF2525 ; 
 int /*<<< orphan*/  RF2525E ; 
 int /*<<< orphan*/  RF5222 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  SUPPORT_BAND_2GHZ ; 
 int /*<<< orphan*/  SUPPORT_BAND_5GHZ ; 
 int SUPPORT_RATE_CCK ; 
 int SUPPORT_RATE_OFDM ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 struct channel_info* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 void* rf_vals_5222 ; 
 void* rf_vals_bg_2522 ; 
 void* rf_vals_bg_2523 ; 
 void* rf_vals_bg_2524 ; 
 void* rf_vals_bg_2525 ; 
 void* rf_vals_bg_2525e ; 
 char* FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct rt2x00_dev *rt2x00dev)
{
	struct hw_mode_spec *spec = &rt2x00dev->spec;
	struct channel_info *info;
	char *tx_power;
	unsigned int i;

	/*
	 * Initialize all hw fields.
	 *
	 * Don't set IEEE80211_HW_HOST_BROADCAST_PS_BUFFERING unless we are
	 * capable of sending the buffered frames out after the DTIM
	 * transmission using rt2x00lib_beacondone. This will send out
	 * multicast and broadcast traffic immediately instead of buffering it
	 * infinitly and thus dropping it after some time.
	 */
	rt2x00dev->hw->flags =
	    IEEE80211_HW_RX_INCLUDES_FCS |
	    IEEE80211_HW_SIGNAL_DBM |
	    IEEE80211_HW_SUPPORTS_PS |
	    IEEE80211_HW_PS_NULLFUNC_STACK;

	FUNC1(rt2x00dev->hw, rt2x00dev->dev);
	FUNC2(rt2x00dev->hw,
				FUNC5(rt2x00dev,
						   EEPROM_MAC_ADDR_0));

	/*
	 * Initialize hw_mode information.
	 */
	spec->supported_bands = SUPPORT_BAND_2GHZ;
	spec->supported_rates = SUPPORT_RATE_CCK | SUPPORT_RATE_OFDM;

	if (FUNC6(rt2x00dev, RF2522)) {
		spec->num_channels = FUNC0(rf_vals_bg_2522);
		spec->channels = rf_vals_bg_2522;
	} else if (FUNC6(rt2x00dev, RF2523)) {
		spec->num_channels = FUNC0(rf_vals_bg_2523);
		spec->channels = rf_vals_bg_2523;
	} else if (FUNC6(rt2x00dev, RF2524)) {
		spec->num_channels = FUNC0(rf_vals_bg_2524);
		spec->channels = rf_vals_bg_2524;
	} else if (FUNC6(rt2x00dev, RF2525)) {
		spec->num_channels = FUNC0(rf_vals_bg_2525);
		spec->channels = rf_vals_bg_2525;
	} else if (FUNC6(rt2x00dev, RF2525E)) {
		spec->num_channels = FUNC0(rf_vals_bg_2525e);
		spec->channels = rf_vals_bg_2525e;
	} else if (FUNC6(rt2x00dev, RF5222)) {
		spec->supported_bands |= SUPPORT_BAND_5GHZ;
		spec->num_channels = FUNC0(rf_vals_5222);
		spec->channels = rf_vals_5222;
	}

	/*
	 * Create channel information array
	 */
	info = FUNC4(spec->num_channels, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	spec->channels_info = info;

	tx_power = FUNC5(rt2x00dev, EEPROM_TXPOWER_START);
	for (i = 0; i < 14; i++) {
		info[i].max_power = MAX_TXPOWER;
		info[i].default_power1 = FUNC3(tx_power[i]);
	}

	if (spec->num_channels > 14) {
		for (i = 14; i < spec->num_channels; i++) {
			info[i].max_power = MAX_TXPOWER;
			info[i].default_power1 = DEFAULT_TXPOWER;
		}
	}

	return 0;
}