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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mwl8k_vif {TYPE_1__* wep_key_conf; } ;
struct mwl8k_cmd_set_key {int /*<<< orphan*/  header; int /*<<< orphan*/  action; int /*<<< orphan*/  key_material; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_key_conf {size_t keyidx; int flags; int cipher; int keylen; struct ieee80211_key_conf* key; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int enabled; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IEEE80211_KEY_FLAG_PAIRWISE ; 
 int /*<<< orphan*/  MAX_ENCR_KEY_LENGTH ; 
 int MIC_KEY_LENGTH ; 
 int /*<<< orphan*/  MWL8K_ENCR_SET_GROUP_KEY ; 
 int /*<<< orphan*/  MWL8K_ENCR_SET_KEY ; 
 struct mwl8k_vif* FUNC0 (struct ieee80211_vif*) ; 
#define  WLAN_CIPHER_SUITE_CCMP 131 
#define  WLAN_CIPHER_SUITE_TKIP 130 
#define  WLAN_CIPHER_SUITE_WEP104 129 
#define  WLAN_CIPHER_SUITE_WEP40 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mwl8k_cmd_set_key*) ; 
 struct mwl8k_cmd_set_key* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ieee80211_key_conf*,int) ; 
 int FUNC5 (struct mwl8k_cmd_set_key*,size_t*,struct ieee80211_key_conf*) ; 
 int FUNC6 (struct ieee80211_hw*,struct ieee80211_vif*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ieee80211_hw *hw,
						struct ieee80211_vif *vif,
						u8 *addr,
						struct ieee80211_key_conf *key)
{
	struct mwl8k_cmd_set_key *cmd;
	int rc;
	int keymlen;
	u32 action;
	u8 idx;
	struct mwl8k_vif *mwl8k_vif = FUNC0(vif);

	cmd = FUNC3(sizeof(*cmd), GFP_KERNEL);
	if (cmd == NULL)
		return -ENOMEM;

	rc = FUNC5(cmd, addr, key);
	if (rc < 0)
		goto done;

	idx = key->keyidx;

	if (key->flags & IEEE80211_KEY_FLAG_PAIRWISE)
		action = MWL8K_ENCR_SET_KEY;
	else
		action = MWL8K_ENCR_SET_GROUP_KEY;

	switch (key->cipher) {
	case WLAN_CIPHER_SUITE_WEP40:
	case WLAN_CIPHER_SUITE_WEP104:
		if (!mwl8k_vif->wep_key_conf[idx].enabled) {
			FUNC4(mwl8k_vif->wep_key_conf[idx].key, key,
						sizeof(*key) + key->keylen);
			mwl8k_vif->wep_key_conf[idx].enabled = 1;
		}

		keymlen = key->keylen;
		action = MWL8K_ENCR_SET_KEY;
		break;
	case WLAN_CIPHER_SUITE_TKIP:
		keymlen = MAX_ENCR_KEY_LENGTH + 2 * MIC_KEY_LENGTH;
		break;
	case WLAN_CIPHER_SUITE_CCMP:
		keymlen = key->keylen;
		break;
	default:
		rc = -ENOTSUPP;
		goto done;
	}

	FUNC4(cmd->key_material, key->key, keymlen);
	cmd->action = FUNC1(action);

	rc = FUNC6(hw, vif, &cmd->header);
done:
	FUNC2(cmd);

	return rc;
}