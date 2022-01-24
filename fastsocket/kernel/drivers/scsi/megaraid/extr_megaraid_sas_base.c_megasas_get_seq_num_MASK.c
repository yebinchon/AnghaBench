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
struct megasas_instance {int /*<<< orphan*/  pdev; } ;
struct megasas_evt_log_info {int dummy; } ;
struct TYPE_8__ {TYPE_3__* sge32; } ;
struct TYPE_6__ {struct megasas_evt_log_info* b; } ;
struct megasas_dcmd_frame {int cmd_status; int sge_count; int data_xfer_len; TYPE_4__ sgl; int /*<<< orphan*/  opcode; scalar_t__ pad_0; scalar_t__ timeout; int /*<<< orphan*/  flags; int /*<<< orphan*/  cmd; TYPE_2__ mbox; } ;
struct megasas_cmd {TYPE_1__* frame; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_7__ {int length; int /*<<< orphan*/  phys_addr; } ;
struct TYPE_5__ {struct megasas_dcmd_frame dcmd; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MFI_CMD_DCMD ; 
 int /*<<< orphan*/  MFI_FRAME_DIR_READ ; 
 int MFI_MBOX_SIZE ; 
 int /*<<< orphan*/  MR_DCMD_CTRL_EVENT_GET_INFO ; 
 struct megasas_cmd* FUNC0 (struct megasas_instance*) ; 
 int /*<<< orphan*/  FUNC1 (struct megasas_instance*,struct megasas_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (struct megasas_instance*,struct megasas_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (struct megasas_evt_log_info*,struct megasas_evt_log_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct megasas_evt_log_info*,int /*<<< orphan*/ ,int) ; 
 struct megasas_evt_log_info* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,struct megasas_evt_log_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct megasas_instance *instance,
		    struct megasas_evt_log_info *eli)
{
	struct megasas_cmd *cmd;
	struct megasas_dcmd_frame *dcmd;
	struct megasas_evt_log_info *el_info;
	dma_addr_t el_info_h = 0;

	cmd = FUNC0(instance);

	if (!cmd) {
		return -ENOMEM;
	}

	dcmd = &cmd->frame->dcmd;
	el_info = FUNC5(instance->pdev,
				       sizeof(struct megasas_evt_log_info),
				       &el_info_h);

	if (!el_info) {
		FUNC2(instance, cmd);
		return -ENOMEM;
	}

	FUNC4(el_info, 0, sizeof(*el_info));
	FUNC4(dcmd->mbox.b, 0, MFI_MBOX_SIZE);

	dcmd->cmd = MFI_CMD_DCMD;
	dcmd->cmd_status = 0x0;
	dcmd->sge_count = 1;
	dcmd->flags = MFI_FRAME_DIR_READ;
	dcmd->timeout = 0;
	dcmd->pad_0 = 0;
	dcmd->data_xfer_len = sizeof(struct megasas_evt_log_info);
	dcmd->opcode = MR_DCMD_CTRL_EVENT_GET_INFO;
	dcmd->sgl.sge32[0].phys_addr = el_info_h;
	dcmd->sgl.sge32[0].length = sizeof(struct megasas_evt_log_info);

	FUNC1(instance, cmd);

	/*
	 * Copy the data back into callers buffer
	 */
	FUNC3(eli, el_info, sizeof(struct megasas_evt_log_info));

	FUNC6(instance->pdev, sizeof(struct megasas_evt_log_info),
			    el_info, el_info_h);

	FUNC2(instance, cmd);

	return 0;
}