
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mwl8k_vif {TYPE_1__* wep_key_conf; } ;
struct mwl8k_cmd_set_key {int header; int action; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_key_conf {scalar_t__ cipher; size_t keyidx; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MWL8K_ENCR_REMOVE_KEY ;
 struct mwl8k_vif* MWL8K_VIF (struct ieee80211_vif*) ;
 scalar_t__ WLAN_CIPHER_SUITE_WEP104 ;
 scalar_t__ WLAN_CIPHER_SUITE_WEP40 ;
 int cpu_to_le32 (int ) ;
 int kfree (struct mwl8k_cmd_set_key*) ;
 struct mwl8k_cmd_set_key* kzalloc (int,int ) ;
 int mwl8k_encryption_set_cmd_info (struct mwl8k_cmd_set_key*,int *,struct ieee80211_key_conf*) ;
 int mwl8k_post_pervif_cmd (struct ieee80211_hw*,struct ieee80211_vif*,int *) ;

__attribute__((used)) static int mwl8k_cmd_encryption_remove_key(struct ieee80211_hw *hw,
      struct ieee80211_vif *vif,
      u8 *addr,
      struct ieee80211_key_conf *key)
{
 struct mwl8k_cmd_set_key *cmd;
 int rc;
 struct mwl8k_vif *mwl8k_vif = MWL8K_VIF(vif);

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (cmd == ((void*)0))
  return -ENOMEM;

 rc = mwl8k_encryption_set_cmd_info(cmd, addr, key);
 if (rc < 0)
  goto done;

 if (key->cipher == WLAN_CIPHER_SUITE_WEP40 ||
   key->cipher == WLAN_CIPHER_SUITE_WEP104)
  mwl8k_vif->wep_key_conf[key->keyidx].enabled = 0;

 cmd->action = cpu_to_le32(MWL8K_ENCR_REMOVE_KEY);

 rc = mwl8k_post_pervif_cmd(hw, vif, &cmd->header);
done:
 kfree(cmd);

 return rc;
}
