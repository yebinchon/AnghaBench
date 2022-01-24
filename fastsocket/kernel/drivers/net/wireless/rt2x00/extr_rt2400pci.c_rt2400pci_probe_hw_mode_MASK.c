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
struct hw_mode_spec {struct channel_info* channels_info; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  supported_rates; int /*<<< orphan*/  supported_bands; } ;
struct rt2x00_dev {TYPE_1__* hw; int /*<<< orphan*/  dev; struct hw_mode_spec spec; } ;
struct channel_info {void* default_power1; void* max_power; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EEPROM_MAC_ADDR_0 ; 
 int /*<<< orphan*/  EEPROM_TXPOWER_START ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IEEE80211_HW_HOST_BROADCAST_PS_BUFFERING ; 
 int IEEE80211_HW_PS_NULLFUNC_STACK ; 
 int IEEE80211_HW_SIGNAL_DBM ; 
 int IEEE80211_HW_SUPPORTS_PS ; 
 char MAX_TXPOWER ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  SUPPORT_BAND_2GHZ ; 
 int /*<<< orphan*/  SUPPORT_RATE_CCK ; 
 void* FUNC3 (char) ; 
 struct channel_info* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rf_vals_b ; 
 char* FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct rt2x00_dev *rt2x00dev)
{
	struct hw_mode_spec *spec = &rt2x00dev->spec;
	struct channel_info *info;
	char *tx_power;
	unsigned int i;

	/*
	 * Initialize all hw fields.
	 */
	rt2x00dev->hw->flags = IEEE80211_HW_HOST_BROADCAST_PS_BUFFERING |
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
	spec->supported_rates = SUPPORT_RATE_CCK;

	spec->num_channels = FUNC0(rf_vals_b);
	spec->channels = rf_vals_b;

	/*
	 * Create channel information array
	 */
	info = FUNC4(spec->num_channels, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	spec->channels_info = info;

	tx_power = FUNC5(rt2x00dev, EEPROM_TXPOWER_START);
	for (i = 0; i < 14; i++) {
		info[i].max_power = FUNC3(MAX_TXPOWER);
		info[i].default_power1 = FUNC3(tx_power[i]);
	}

	return 0;
}