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
struct TYPE_2__ {int /*<<< orphan*/  reset_duration; } ;
struct il_priv {int retry_rate; int /*<<< orphan*/ * ieee_rates; TYPE_1__ force_reset; int /*<<< orphan*/  missed_beacon_threshold; int /*<<< orphan*/  iw_mode; int /*<<< orphan*/  band; int /*<<< orphan*/ * ieee_channels; int /*<<< orphan*/  mutex; int /*<<< orphan*/  free_frames; int /*<<< orphan*/  hcmd_lock; int /*<<< orphan*/  sta_lock; int /*<<< orphan*/ * beacon_skb; scalar_t__ eeprom; } ;
struct il3945_eeprom {scalar_t__ version; } ;

/* Variables and functions */
 scalar_t__ EEPROM_3945_EEPROM_VERSION ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  IEEE80211_BAND_2GHZ ; 
 int /*<<< orphan*/  IL_DELAY_NEXT_FORCE_FW_RELOAD ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  IL_MISSED_BEACON_THRESHOLD_DEF ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct il_priv*) ; 
 int FUNC6 (struct il_priv*) ; 
 int FUNC7 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct il_priv *il)
{
	int ret;
	struct il3945_eeprom *eeprom = (struct il3945_eeprom *)il->eeprom;

	il->retry_rate = 1;
	il->beacon_skb = NULL;

	FUNC9(&il->sta_lock);
	FUNC9(&il->hcmd_lock);

	FUNC2(&il->free_frames);

	FUNC8(&il->mutex);

	il->ieee_channels = NULL;
	il->ieee_rates = NULL;
	il->band = IEEE80211_BAND_2GHZ;

	il->iw_mode = NL80211_IFTYPE_STATION;
	il->missed_beacon_threshold = IL_MISSED_BEACON_THRESHOLD_DEF;

	/* initialize force reset */
	il->force_reset.reset_duration = IL_DELAY_NEXT_FORCE_FW_RELOAD;

	if (eeprom->version < EEPROM_3945_EEPROM_VERSION) {
		FUNC1("Unsupported EEPROM version: 0x%04X\n",
			eeprom->version);
		ret = -EINVAL;
		goto err;
	}
	ret = FUNC6(il);
	if (ret) {
		FUNC0("initializing regulatory failed: %d\n", ret);
		goto err;
	}

	/* Set up txpower settings in driver for all channels */
	if (FUNC4(il)) {
		ret = -EIO;
		goto err_free_channel_map;
	}

	ret = FUNC7(il);
	if (ret) {
		FUNC0("initializing geos failed: %d\n", ret);
		goto err_free_channel_map;
	}
	FUNC3(il, il->ieee_rates);

	return 0;

err_free_channel_map:
	FUNC5(il);
err:
	return ret;
}