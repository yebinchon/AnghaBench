
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* length; void* code; } ;
struct mwl8k_cmd_set_rf_channel {TYPE_1__ header; int channel_flags; int current_channel; void* action; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {struct ieee80211_channel* chan; } ;
struct ieee80211_conf {TYPE_2__ chandef; } ;
struct ieee80211_channel {scalar_t__ band; int hw_value; } ;
typedef enum nl80211_channel_type { ____Placeholder_nl80211_channel_type } nl80211_channel_type ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IEEE80211_BAND_2GHZ ;
 scalar_t__ IEEE80211_BAND_5GHZ ;
 int MWL8K_CMD_SET ;
 int MWL8K_CMD_SET_RF_CHANNEL ;
 int NL80211_CHAN_HT20 ;
 int NL80211_CHAN_HT40MINUS ;
 int NL80211_CHAN_HT40PLUS ;
 int NL80211_CHAN_NO_HT ;
 int cfg80211_get_chandef_type (TYPE_2__*) ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 int kfree (struct mwl8k_cmd_set_rf_channel*) ;
 struct mwl8k_cmd_set_rf_channel* kzalloc (int,int ) ;
 int mwl8k_post_cmd (struct ieee80211_hw*,TYPE_1__*) ;

__attribute__((used)) static int mwl8k_cmd_set_rf_channel(struct ieee80211_hw *hw,
        struct ieee80211_conf *conf)
{
 struct ieee80211_channel *channel = conf->chandef.chan;
 enum nl80211_channel_type channel_type =
  cfg80211_get_chandef_type(&conf->chandef);
 struct mwl8k_cmd_set_rf_channel *cmd;
 int rc;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (cmd == ((void*)0))
  return -ENOMEM;

 cmd->header.code = cpu_to_le16(MWL8K_CMD_SET_RF_CHANNEL);
 cmd->header.length = cpu_to_le16(sizeof(*cmd));
 cmd->action = cpu_to_le16(MWL8K_CMD_SET);
 cmd->current_channel = channel->hw_value;

 if (channel->band == IEEE80211_BAND_2GHZ)
  cmd->channel_flags |= cpu_to_le32(0x00000001);
 else if (channel->band == IEEE80211_BAND_5GHZ)
  cmd->channel_flags |= cpu_to_le32(0x00000004);

 if (channel_type == NL80211_CHAN_NO_HT ||
     channel_type == NL80211_CHAN_HT20)
  cmd->channel_flags |= cpu_to_le32(0x00000080);
 else if (channel_type == NL80211_CHAN_HT40MINUS)
  cmd->channel_flags |= cpu_to_le32(0x000001900);
 else if (channel_type == NL80211_CHAN_HT40PLUS)
  cmd->channel_flags |= cpu_to_le32(0x000000900);

 rc = mwl8k_post_cmd(hw, &cmd->header);
 kfree(cmd);

 return rc;
}
