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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {scalar_t__ hlid; } ;
struct wl12xx_vif {TYPE_1__ sta; } ;
struct wl1271_cmd_set_keys {scalar_t__ hlid; scalar_t__ key; scalar_t__ key_id; int /*<<< orphan*/ * ac_seq_num32; void** ac_seq_num16; scalar_t__ key_type; scalar_t__ key_size; void* key_action; int /*<<< orphan*/  lid_key_type; } ;
struct wl1271 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BROADCAST_LID_TYPE ; 
 int /*<<< orphan*/  CMD_SET_KEYS ; 
 int /*<<< orphan*/  DEBUG_CRYPT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ KEY_TKIP ; 
 scalar_t__ KEY_WEP ; 
 int /*<<< orphan*/  UNICAST_LID_TYPE ; 
 int /*<<< orphan*/  WEP_DEFAULT_LID_TYPE ; 
 scalar_t__ WL12XX_INVALID_LINK_ID ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC3 (struct wl1271_cmd_set_keys*) ; 
 struct wl1271_cmd_set_keys* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__ const*,scalar_t__) ; 
 int FUNC6 (struct wl1271*,int /*<<< orphan*/ ,struct wl1271_cmd_set_keys*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,struct wl1271_cmd_set_keys*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int FUNC9(struct wl1271 *wl, struct wl12xx_vif *wlvif,
		       u16 action, u8 id, u8 key_type,
		       u8 key_size, const u8 *key, const u8 *addr,
		       u32 tx_seq_32, u16 tx_seq_16)
{
	struct wl1271_cmd_set_keys *cmd;
	int ret = 0;

	/* hlid might have already been deleted */
	if (wlvif->sta.hlid == WL12XX_INVALID_LINK_ID)
		return 0;

	cmd = FUNC4(sizeof(*cmd), GFP_KERNEL);
	if (!cmd) {
		ret = -ENOMEM;
		goto out;
	}

	cmd->hlid = wlvif->sta.hlid;

	if (key_type == KEY_WEP)
		cmd->lid_key_type = WEP_DEFAULT_LID_TYPE;
	else if (FUNC2(addr))
		cmd->lid_key_type = BROADCAST_LID_TYPE;
	else
		cmd->lid_key_type = UNICAST_LID_TYPE;

	cmd->key_action = FUNC0(action);
	cmd->key_size = key_size;
	cmd->key_type = key_type;

	cmd->ac_seq_num16[0] = FUNC0(tx_seq_16);
	cmd->ac_seq_num32[0] = FUNC1(tx_seq_32);

	cmd->key_id = id;

	if (key_type == KEY_TKIP) {
		/*
		 * We get the key in the following form:
		 * TKIP (16 bytes) - TX MIC (8 bytes) - RX MIC (8 bytes)
		 * but the target is expecting:
		 * TKIP - RX MIC - TX MIC
		 */
		FUNC5(cmd->key, key, 16);
		FUNC5(cmd->key + 16, key + 24, 8);
		FUNC5(cmd->key + 24, key + 16, 8);

	} else {
		FUNC5(cmd->key, key, key_size);
	}

	FUNC7(DEBUG_CRYPT, "TARGET KEY: ", cmd, sizeof(*cmd));

	ret = FUNC6(wl, CMD_SET_KEYS, cmd, sizeof(*cmd), 0);
	if (ret < 0) {
		FUNC8("could not set keys");
	goto out;
	}

out:
	FUNC3(cmd);

	return ret;
}