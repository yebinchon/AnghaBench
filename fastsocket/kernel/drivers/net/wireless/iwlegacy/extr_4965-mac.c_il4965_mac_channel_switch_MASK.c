#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct TYPE_8__ {scalar_t__ flags; int /*<<< orphan*/  channel; } ;
struct TYPE_7__ {int is_40mhz; int /*<<< orphan*/  extension_chan_offset; } ;
struct il_ht_config {int /*<<< orphan*/  smps; } ;
struct TYPE_6__ {int /*<<< orphan*/  channel; } ;
struct il_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  vif; scalar_t__ switch_channel; int /*<<< orphan*/  status; TYPE_4__* ops; int /*<<< orphan*/  lock; TYPE_3__ staging; TYPE_2__ ht; struct il_ht_config current_ht_config; TYPE_1__ active; } ;
struct il_channel_info {int dummy; } ;
struct ieee80211_conf {int /*<<< orphan*/  smps_mode; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct il_priv* priv; } ;
struct TYPE_10__ {struct ieee80211_channel* chan; } ;
struct ieee80211_channel_switch {TYPE_5__ chandef; } ;
struct ieee80211_channel {scalar_t__ hw_value; int /*<<< orphan*/  band; } ;
struct TYPE_9__ {scalar_t__ (* set_channel_switch ) (struct il_priv*,struct ieee80211_channel_switch*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IEEE80211_HT_PARAM_CHA_SEC_ABOVE ; 
 int /*<<< orphan*/  IEEE80211_HT_PARAM_CHA_SEC_BELOW ; 
 int /*<<< orphan*/  IEEE80211_HT_PARAM_CHA_SEC_NONE ; 
#define  NL80211_CHAN_HT20 131 
#define  NL80211_CHAN_HT40MINUS 130 
#define  NL80211_CHAN_HT40PLUS 129 
#define  NL80211_CHAN_NO_HT 128 
 int /*<<< orphan*/  S_CHANNEL_SWITCH_PENDING ; 
 int /*<<< orphan*/  S_EXIT_PENDING ; 
 int /*<<< orphan*/  S_SCANNING ; 
 int FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct il_channel_info* FUNC5 (struct il_priv*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct il_channel_info const*) ; 
 scalar_t__ FUNC8 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC11 (struct il_priv*,struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC12 (struct il_priv*,struct il_ht_config*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (struct il_priv*,struct ieee80211_channel_switch*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC21(struct ieee80211_hw *hw,
			  struct ieee80211_channel_switch *ch_switch)
{
	struct il_priv *il = hw->priv;
	const struct il_channel_info *ch_info;
	struct ieee80211_conf *conf = &hw->conf;
	struct ieee80211_channel *channel = ch_switch->chandef.chan;
	struct il_ht_config *ht_conf = &il->current_ht_config;
	u16 ch;

	FUNC0("enter\n");

	FUNC14(&il->mutex);

	if (FUNC8(il))
		goto out;

	if (FUNC20(S_EXIT_PENDING, &il->status) ||
	    FUNC20(S_SCANNING, &il->status) ||
	    FUNC20(S_CHANNEL_SWITCH_PENDING, &il->status))
		goto out;

	if (!FUNC6(il))
		goto out;

	if (!il->ops->set_channel_switch)
		goto out;

	ch = channel->hw_value;
	if (FUNC13(il->active.channel) == ch)
		goto out;

	ch_info = FUNC5(il, channel->band, ch);
	if (!FUNC7(ch_info)) {
		FUNC0("invalid channel\n");
		goto out;
	}

	FUNC17(&il->lock);

	il->current_ht_config.smps = conf->smps_mode;

	/* Configure HT40 channels */
	switch (FUNC1(&ch_switch->chandef)) {
	case NL80211_CHAN_NO_HT:
	case NL80211_CHAN_HT20:
		il->ht.is_40mhz = false;
		il->ht.extension_chan_offset = IEEE80211_HT_PARAM_CHA_SEC_NONE;
		break;
	case NL80211_CHAN_HT40MINUS:
		il->ht.extension_chan_offset = IEEE80211_HT_PARAM_CHA_SEC_BELOW;
		il->ht.is_40mhz = true;
		break;
	case NL80211_CHAN_HT40PLUS:
		il->ht.extension_chan_offset = IEEE80211_HT_PARAM_CHA_SEC_ABOVE;
		il->ht.is_40mhz = true;
		break;
	}

	if ((FUNC13(il->staging.channel) != ch))
		il->staging.flags = 0;

	FUNC11(il, channel);
	FUNC12(il, ht_conf);
	FUNC9(il, channel->band, il->vif);

	FUNC18(&il->lock);

	FUNC10(il);
	/*
	 * at this point, staging_rxon has the
	 * configuration for channel switch
	 */
	FUNC16(S_CHANNEL_SWITCH_PENDING, &il->status);
	il->switch_channel = FUNC3(ch);
	if (il->ops->set_channel_switch(il, ch_switch)) {
		FUNC2(S_CHANNEL_SWITCH_PENDING, &il->status);
		il->switch_channel = 0;
		FUNC4(il->vif, false);
	}

out:
	FUNC15(&il->mutex);
	FUNC0("leave\n");
}