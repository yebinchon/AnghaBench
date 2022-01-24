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
typedef  size_t u8 ;
typedef  int u16 ;
struct TYPE_6__ {int /*<<< orphan*/  key_mapping_keys; } ;
struct il_priv {int /*<<< orphan*/  sta_lock; TYPE_3__* stations; int /*<<< orphan*/  ucode_key_table; TYPE_1__ _4965; int /*<<< orphan*/  mutex; } ;
struct il_hw_key {int dummy; } ;
struct il_addsta_cmd {int dummy; } ;
struct il4965_keyinfo {int dummy; } ;
struct ieee80211_key_conf {size_t keyidx; int /*<<< orphan*/  hw_key_idx; } ;
struct TYPE_7__ {int /*<<< orphan*/  modify_mask; } ;
struct TYPE_9__ {int key_flags; int /*<<< orphan*/  key_offset; } ;
struct TYPE_10__ {int /*<<< orphan*/  mode; TYPE_2__ sta; TYPE_4__ key; } ;
struct TYPE_8__ {TYPE_5__ sta; TYPE_4__ keyinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SYNC ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,int) ; 
 int /*<<< orphan*/  STA_CONTROL_MODIFY_MSK ; 
 int STA_KEY_FLG_INVALID ; 
 int STA_KEY_FLG_KEYID_POS ; 
 int STA_KEY_FLG_NO_ENC ; 
 int /*<<< orphan*/  STA_MODIFY_KEY_MASK ; 
 scalar_t__ FUNC3 (struct il_priv*) ; 
 int FUNC4 (struct il_priv*,struct il_addsta_cmd*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct il_addsta_cmd*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC12(struct il_priv *il,
			  struct ieee80211_key_conf *keyconf, u8 sta_id)
{
	unsigned long flags;
	u16 key_flags;
	u8 keyidx;
	struct il_addsta_cmd sta_cmd;

	FUNC6(&il->mutex);

	il->_4965.key_mapping_keys--;

	FUNC9(&il->sta_lock, flags);
	key_flags = FUNC5(il->stations[sta_id].sta.key.key_flags);
	keyidx = (key_flags >> STA_KEY_FLG_KEYID_POS) & 0x3;

	FUNC0("Remove dynamic key: idx=%d sta=%d\n", keyconf->keyidx, sta_id);

	if (keyconf->keyidx != keyidx) {
		/* We need to remove a key with idx different that the one
		 * in the uCode. This means that the key we need to remove has
		 * been replaced by another one with different idx.
		 * Don't do anything and return ok
		 */
		FUNC10(&il->sta_lock, flags);
		return 0;
	}

	if (il->stations[sta_id].sta.key.key_flags & STA_KEY_FLG_INVALID) {
		FUNC2("Removing wrong key %d 0x%x\n", keyconf->keyidx,
			key_flags);
		FUNC10(&il->sta_lock, flags);
		return 0;
	}

	if (!FUNC11
	    (il->stations[sta_id].sta.key.key_offset, &il->ucode_key_table))
		FUNC1("idx %d not used in uCode key table.\n",
		       il->stations[sta_id].sta.key.key_offset);
	FUNC8(&il->stations[sta_id].keyinfo, 0, sizeof(struct il_hw_key));
	FUNC8(&il->stations[sta_id].sta.key, 0, sizeof(struct il4965_keyinfo));
	il->stations[sta_id].sta.key.key_flags =
	    STA_KEY_FLG_NO_ENC | STA_KEY_FLG_INVALID;
	il->stations[sta_id].sta.key.key_offset = keyconf->hw_key_idx;
	il->stations[sta_id].sta.sta.modify_mask = STA_MODIFY_KEY_MASK;
	il->stations[sta_id].sta.mode = STA_CONTROL_MODIFY_MSK;

	if (FUNC3(il)) {
		FUNC0
		    ("Not sending C_ADD_STA command because RFKILL enabled.\n");
		FUNC10(&il->sta_lock, flags);
		return 0;
	}
	FUNC7(&sta_cmd, &il->stations[sta_id].sta,
	       sizeof(struct il_addsta_cmd));
	FUNC10(&il->sta_lock, flags);

	return FUNC4(il, &sta_cmd, CMD_SYNC);
}