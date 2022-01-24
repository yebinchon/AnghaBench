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
struct TYPE_3__ {void* length; void* code; } ;
struct mwl8k_cmd_set_rf_channel {TYPE_1__ header; int /*<<< orphan*/  channel_flags; int /*<<< orphan*/  current_channel; void* action; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {struct ieee80211_channel* chan; } ;
struct ieee80211_conf {TYPE_2__ chandef; } ;
struct ieee80211_channel {scalar_t__ band; int /*<<< orphan*/  hw_value; } ;
typedef  enum nl80211_channel_type { ____Placeholder_nl80211_channel_type } nl80211_channel_type ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IEEE80211_BAND_2GHZ ; 
 scalar_t__ IEEE80211_BAND_5GHZ ; 
 int MWL8K_CMD_SET ; 
 int MWL8K_CMD_SET_RF_CHANNEL ; 
 int NL80211_CHAN_HT20 ; 
 int NL80211_CHAN_HT40MINUS ; 
 int NL80211_CHAN_HT40PLUS ; 
 int NL80211_CHAN_NO_HT ; 
 int FUNC0 (TYPE_2__*) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mwl8k_cmd_set_rf_channel*) ; 
 struct mwl8k_cmd_set_rf_channel* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ieee80211_hw*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct ieee80211_hw *hw,
				    struct ieee80211_conf *conf)
{
	struct ieee80211_channel *channel = conf->chandef.chan;
	enum nl80211_channel_type channel_type =
		FUNC0(&conf->chandef);
	struct mwl8k_cmd_set_rf_channel *cmd;
	int rc;

	cmd = FUNC4(sizeof(*cmd), GFP_KERNEL);
	if (cmd == NULL)
		return -ENOMEM;

	cmd->header.code = FUNC1(MWL8K_CMD_SET_RF_CHANNEL);
	cmd->header.length = FUNC1(sizeof(*cmd));
	cmd->action = FUNC1(MWL8K_CMD_SET);
	cmd->current_channel = channel->hw_value;

	if (channel->band == IEEE80211_BAND_2GHZ)
		cmd->channel_flags |= FUNC2(0x00000001);
	else if (channel->band == IEEE80211_BAND_5GHZ)
		cmd->channel_flags |= FUNC2(0x00000004);

	if (channel_type == NL80211_CHAN_NO_HT ||
	    channel_type == NL80211_CHAN_HT20)
		cmd->channel_flags |= FUNC2(0x00000080);
	else if (channel_type == NL80211_CHAN_HT40MINUS)
		cmd->channel_flags |= FUNC2(0x000001900);
	else if (channel_type == NL80211_CHAN_HT40PLUS)
		cmd->channel_flags |= FUNC2(0x000000900);

	rc = FUNC5(hw, &cmd->header);
	FUNC3(cmd);

	return rc;
}