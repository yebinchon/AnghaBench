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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct scsi_device {int id; int lun; struct esp_lun_data* hostdata; } ;
struct scsi_cmnd {int cmd_len; int /*<<< orphan*/ * cmnd; struct scsi_device* device; } ;
struct esp_target_data {int flags; scalar_t__ nego_goal_period; scalar_t__ nego_goal_offset; scalar_t__ nego_goal_width; int /*<<< orphan*/  starget; scalar_t__ nego_goal_tags; } ;
struct esp_lun_data {int dummy; } ;
struct esp_cmd_entry {int flags; scalar_t__* tag; int /*<<< orphan*/  list; struct scsi_cmnd* cmd; } ;
struct esp {int flags; int msg_out_len; scalar_t__ rev; int cmd_bytes_left; int /*<<< orphan*/  command_block_dma; TYPE_1__* ops; int /*<<< orphan*/ * command_block; int /*<<< orphan*/  select_state; scalar_t__* msg_out; int /*<<< orphan*/ * cmd_bytes_ptr; struct esp_cmd_entry* active_cmd; int /*<<< orphan*/  active_cmds; struct esp_target_data* target; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* send_dma_cmd ) (struct esp*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 scalar_t__ ESP100 ; 
 int /*<<< orphan*/  ESP_BUSID ; 
 int ESP_BUSID_CTR32BIT ; 
 int ESP_BUSID_RESELID ; 
 int ESP_CMD_DMA ; 
 int ESP_CMD_FLAG_AUTOSENSE ; 
 int /*<<< orphan*/  ESP_CMD_FLUSH ; 
 int ESP_CMD_SA3 ; 
 int ESP_CMD_SELA ; 
 int ESP_CMD_SELAS ; 
 int ESP_DEBUG_SCSICMD ; 
 int ESP_FLAG_DOING_SLOWCMD ; 
 int ESP_FLAG_RESETTING ; 
 int /*<<< orphan*/  ESP_SELECT_BASIC ; 
 int /*<<< orphan*/  ESP_SELECT_MSGOUT ; 
 int ESP_TGT_BROKEN ; 
 int ESP_TGT_CHECK_NEGO ; 
 int ESP_TGT_DISCONNECT ; 
 int ESP_TGT_NEGO_SYNC ; 
 int ESP_TGT_NEGO_WIDE ; 
 scalar_t__ FASHME ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct esp*,struct esp_cmd_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct esp*,struct scsi_cmnd*) ; 
 int esp_debug ; 
 int /*<<< orphan*/  FUNC3 (struct esp*,struct scsi_cmnd*) ; 
 scalar_t__ FUNC4 (struct esp_target_data*) ; 
 scalar_t__ FUNC5 (struct esp_target_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct esp*,struct esp_cmd_entry*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct esp*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct esp*,int) ; 
 struct esp_cmd_entry* FUNC10 (struct esp*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct esp*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (scalar_t__*,scalar_t__,scalar_t__) ; 
 int FUNC17 (scalar_t__*,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct esp*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC20(struct esp *esp)
{
	struct esp_target_data *tp;
	struct esp_lun_data *lp;
	struct scsi_device *dev;
	struct scsi_cmnd *cmd;
	struct esp_cmd_entry *ent;
	int tgt, lun, i;
	u32 val, start_cmd;
	u8 *p;

	if (esp->active_cmd ||
	    (esp->flags & ESP_FLAG_RESETTING))
		return;

	ent = FUNC10(esp);
	if (!ent)
		return;

	if (ent->flags & ESP_CMD_FLAG_AUTOSENSE) {
		FUNC1(esp, ent);
		return;
	}

	cmd = ent->cmd;
	dev = cmd->device;
	tgt = dev->id;
	lun = dev->lun;
	tp = &esp->target[tgt];
	lp = dev->hostdata;

	FUNC11(&ent->list, &esp->active_cmds);

	esp->active_cmd = ent;

	FUNC3(esp, cmd);
	FUNC6(esp, ent);

	FUNC2(esp, cmd);

	p = esp->command_block;

	esp->msg_out_len = 0;
	if (tp->flags & ESP_TGT_CHECK_NEGO) {
		/* Need to negotiate.  If the target is broken
		 * go for synchronous transfers and non-wide.
		 */
		if (tp->flags & ESP_TGT_BROKEN) {
			tp->flags &= ~ESP_TGT_DISCONNECT;
			tp->nego_goal_period = 0;
			tp->nego_goal_offset = 0;
			tp->nego_goal_width = 0;
			tp->nego_goal_tags = 0;
		}

		/* If the settings are not changing, skip this.  */
		if (FUNC18(tp->starget) == tp->nego_goal_width &&
		    FUNC15(tp->starget) == tp->nego_goal_period &&
		    FUNC14(tp->starget) == tp->nego_goal_offset) {
			tp->flags &= ~ESP_TGT_CHECK_NEGO;
			goto build_identify;
		}

		if (esp->rev == FASHME && FUNC5(tp)) {
			esp->msg_out_len =
				FUNC17(&esp->msg_out[0],
						       (tp->nego_goal_width ?
							1 : 0));
			tp->flags |= ESP_TGT_NEGO_WIDE;
		} else if (FUNC4(tp)) {
			esp->msg_out_len =
				FUNC16(&esp->msg_out[0],
						      tp->nego_goal_period,
						      tp->nego_goal_offset);
			tp->flags |= ESP_TGT_NEGO_SYNC;
		} else {
			tp->flags &= ~ESP_TGT_CHECK_NEGO;
		}

		/* Process it like a slow command.  */
		if (tp->flags & (ESP_TGT_NEGO_WIDE | ESP_TGT_NEGO_SYNC))
			esp->flags |= ESP_FLAG_DOING_SLOWCMD;
	}

build_identify:
	/* If we don't have a lun-data struct yet, we're probing
	 * so do not disconnect.  Also, do not disconnect unless
	 * we have a tag on this command.
	 */
	if (lp && (tp->flags & ESP_TGT_DISCONNECT) && ent->tag[0])
		*p++ = FUNC0(1, lun);
	else
		*p++ = FUNC0(0, lun);

	if (ent->tag[0] && esp->rev == ESP100) {
		/* ESP100 lacks select w/atn3 command, use select
		 * and stop instead.
		 */
		esp->flags |= ESP_FLAG_DOING_SLOWCMD;
	}

	if (!(esp->flags & ESP_FLAG_DOING_SLOWCMD)) {
		start_cmd = ESP_CMD_DMA | ESP_CMD_SELA;
		if (ent->tag[0]) {
			*p++ = ent->tag[0];
			*p++ = ent->tag[1];

			start_cmd = ESP_CMD_DMA | ESP_CMD_SA3;
		}

		for (i = 0; i < cmd->cmd_len; i++)
			*p++ = cmd->cmnd[i];

		esp->select_state = ESP_SELECT_BASIC;
	} else {
		esp->cmd_bytes_left = cmd->cmd_len;
		esp->cmd_bytes_ptr = &cmd->cmnd[0];

		if (ent->tag[0]) {
			for (i = esp->msg_out_len - 1;
			     i >= 0; i--)
				esp->msg_out[i + 2] = esp->msg_out[i];
			esp->msg_out[0] = ent->tag[0];
			esp->msg_out[1] = ent->tag[1];
			esp->msg_out_len += 2;
		}

		start_cmd = ESP_CMD_DMA | ESP_CMD_SELAS;
		esp->select_state = ESP_SELECT_MSGOUT;
	}
	val = tgt;
	if (esp->rev == FASHME)
		val |= ESP_BUSID_RESELID | ESP_BUSID_CTR32BIT;
	FUNC7(val, ESP_BUSID);

	FUNC9(esp, tgt);
	FUNC8(esp, tgt);

	val = (p - esp->command_block);

	if (esp_debug & ESP_DEBUG_SCSICMD) {
		FUNC12("ESP: tgt[%d] lun[%d] scsi_cmd [ ", tgt, lun);
		for (i = 0; i < cmd->cmd_len; i++)
			FUNC12("%02x ", cmd->cmnd[i]);
		FUNC12("]\n");
	}

	if (esp->rev == FASHME)
		FUNC13(esp, ESP_CMD_FLUSH);
	esp->ops->send_dma_cmd(esp, esp->command_block_dma,
			       val, 16, 0, start_cmd);
}