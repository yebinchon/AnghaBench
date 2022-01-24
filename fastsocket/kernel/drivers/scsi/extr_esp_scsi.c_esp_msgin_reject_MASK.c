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
struct scsi_cmnd {TYPE_1__* device; } ;
struct esp_target_data {int flags; scalar_t__ esp_offset; scalar_t__ esp_period; int /*<<< orphan*/  nego_goal_offset; int /*<<< orphan*/  nego_goal_period; } ;
struct esp_cmd_entry {struct scsi_cmnd* cmd; } ;
struct esp {int msg_out_len; int /*<<< orphan*/ * msg_out; struct esp_target_data* target; struct esp_cmd_entry* active_cmd; } ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABORT_TASK_SET ; 
 int /*<<< orphan*/  ESP_CMD_RATN ; 
 int /*<<< orphan*/  ESP_CMD_SATN ; 
 int ESP_TGT_CHECK_NEGO ; 
 int ESP_TGT_NEGO_SYNC ; 
 int ESP_TGT_NEGO_WIDE ; 
 int ESP_TGT_WIDE ; 
 int /*<<< orphan*/  FUNC0 (struct esp_target_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct esp*,struct esp_target_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct esp*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct esp *esp)
{
	struct esp_cmd_entry *ent = esp->active_cmd;
	struct scsi_cmnd *cmd = ent->cmd;
	struct esp_target_data *tp;
	int tgt;

	tgt = cmd->device->id;
	tp = &esp->target[tgt];

	if (tp->flags & ESP_TGT_NEGO_WIDE) {
		tp->flags &= ~(ESP_TGT_NEGO_WIDE | ESP_TGT_WIDE);

		if (!FUNC0(tp)) {
			tp->flags &= ~ESP_TGT_CHECK_NEGO;
			FUNC2(esp, ESP_CMD_RATN);
		} else {
			esp->msg_out_len =
				FUNC3(&esp->msg_out[0],
						      tp->nego_goal_period,
						      tp->nego_goal_offset);
			tp->flags |= ESP_TGT_NEGO_SYNC;
			FUNC2(esp, ESP_CMD_SATN);
		}
		return;
	}

	if (tp->flags & ESP_TGT_NEGO_SYNC) {
		tp->flags &= ~(ESP_TGT_NEGO_SYNC | ESP_TGT_CHECK_NEGO);
		tp->esp_period = 0;
		tp->esp_offset = 0;
		FUNC1(esp, tp, 0, 0, 0, 0);
		FUNC2(esp, ESP_CMD_RATN);
		return;
	}

	esp->msg_out[0] = ABORT_TASK_SET;
	esp->msg_out_len = 1;
	FUNC2(esp, ESP_CMD_SATN);
}