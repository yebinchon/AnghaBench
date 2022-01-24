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
struct esp_target_data {int dummy; } ;
struct esp_cmd_entry {struct scsi_cmnd* cmd; } ;
struct esp {scalar_t__* msg_in; int msg_out_len; int /*<<< orphan*/ * msg_out; struct esp_target_data* target; struct esp_cmd_entry* active_cmd; } ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABORT_TASK_SET ; 
 int /*<<< orphan*/  ESP_CMD_SATN ; 
 scalar_t__ EXTENDED_SDTR ; 
 scalar_t__ EXTENDED_WDTR ; 
 int /*<<< orphan*/  FUNC0 (struct esp*,struct esp_target_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct esp*,struct esp_target_data*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct esp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct esp *esp)
{
	struct esp_cmd_entry *ent = esp->active_cmd;
	struct scsi_cmnd *cmd = ent->cmd;
	struct esp_target_data *tp;
	int tgt = cmd->device->id;

	tp = &esp->target[tgt];
	if (esp->msg_in[2] == EXTENDED_SDTR) {
		FUNC0(esp, tp);
		return;
	}
	if (esp->msg_in[2] == EXTENDED_WDTR) {
		FUNC1(esp, tp);
		return;
	}

	FUNC2("ESP: Unexpected extended msg type %x\n",
	       esp->msg_in[2]);

	esp->msg_out[0] = ABORT_TASK_SET;
	esp->msg_out_len = 1;
	FUNC3(esp, ESP_CMD_SATN);
}