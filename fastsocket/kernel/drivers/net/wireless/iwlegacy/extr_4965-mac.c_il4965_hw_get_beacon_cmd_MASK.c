#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_6__ {int /*<<< orphan*/  life_time; } ;
struct TYPE_8__ {int tx_flags; int /*<<< orphan*/  rate_n_flags; TYPE_2__ stop_time; int /*<<< orphan*/  sta_id; int /*<<< orphan*/  len; } ;
struct il_tx_beacon_cmd {TYPE_4__ tx; scalar_t__ frame; } ;
struct TYPE_7__ {int /*<<< orphan*/  valid_tx_ant; int /*<<< orphan*/  bcast_id; } ;
struct il_priv {int /*<<< orphan*/  mgmt_tx_ant; TYPE_3__ hw_params; int /*<<< orphan*/  beacon_enabled; int /*<<< orphan*/  mutex; } ;
struct TYPE_5__ {struct il_tx_beacon_cmd beacon; } ;
struct il_frame {TYPE_1__ u; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ IL_FIRST_CCK_RATE ; 
 scalar_t__ IL_LAST_CCK_RATE ; 
 scalar_t__ MAX_MPDU_SIZE ; 
 scalar_t__ RATE_MCS_ANT_POS ; 
 scalar_t__ RATE_MCS_CCK_MSK ; 
 int TX_CMD_FLG_SEQ_CTL_MSK ; 
 int TX_CMD_FLG_STA_RATE_MSK ; 
 int TX_CMD_FLG_TSF_MSK ; 
 int /*<<< orphan*/  TX_CMD_LIFE_TIME_INFINITE ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (struct il_priv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct il_priv*,struct il_tx_beacon_cmd*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct il_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct il_tx_beacon_cmd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned int
FUNC11(struct il_priv *il, struct il_frame *frame)
{
	struct il_tx_beacon_cmd *tx_beacon_cmd;
	u32 frame_size;
	u32 rate_flags;
	u32 rate;
	/*
	 * We have to set up the TX command, the TX Beacon command, and the
	 * beacon contents.
	 */

	FUNC9(&il->mutex);

	if (!il->beacon_enabled) {
		FUNC1("Trying to build beacon without beaconing enabled\n");
		return 0;
	}

	/* Initialize memory */
	tx_beacon_cmd = &frame->u.beacon;
	FUNC10(tx_beacon_cmd, 0, sizeof(*tx_beacon_cmd));

	/* Set up TX beacon contents */
	frame_size =
	    FUNC5(il, tx_beacon_cmd->frame,
				     sizeof(frame->u) - sizeof(*tx_beacon_cmd));
	if (FUNC2(frame_size > MAX_MPDU_SIZE))
		return 0;
	if (!frame_size)
		return 0;

	/* Set up TX command fields */
	tx_beacon_cmd->tx.len = FUNC3((u16) frame_size);
	tx_beacon_cmd->tx.sta_id = il->hw_params.bcast_id;
	tx_beacon_cmd->tx.stop_time.life_time = TX_CMD_LIFE_TIME_INFINITE;
	tx_beacon_cmd->tx.tx_flags =
	    TX_CMD_FLG_SEQ_CTL_MSK | TX_CMD_FLG_TSF_MSK |
	    TX_CMD_FLG_STA_RATE_MSK;

	/* Set up TX beacon command fields */
	FUNC6(il, tx_beacon_cmd, (u8 *) tx_beacon_cmd->frame,
			      frame_size);

	/* Set up packet rate and flags */
	rate = FUNC8(il);
	FUNC7(il, &il->mgmt_tx_ant, il->hw_params.valid_tx_ant);
	rate_flags = FUNC0(il->mgmt_tx_ant) << RATE_MCS_ANT_POS;
	if ((rate >= IL_FIRST_CCK_RATE) && (rate <= IL_LAST_CCK_RATE))
		rate_flags |= RATE_MCS_CCK_MSK;
	tx_beacon_cmd->tx.rate_n_flags = FUNC4(rate | rate_flags);

	return sizeof(*tx_beacon_cmd) + frame_size;
}