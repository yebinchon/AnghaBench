#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct pm8001_hba_info {int /*<<< orphan*/  nvmd_completion; struct pm8001_ccb_info* ccb_info; } ;
struct pm8001_ccb_info {int ccb_tag; int /*<<< orphan*/ * task; TYPE_2__* fw_control_context; } ;
struct fw_flash_Update_resp {int /*<<< orphan*/  status; int /*<<< orphan*/  tag; } ;
struct fw_control_ex {int dummy; } ;
typedef  int /*<<< orphan*/  fw_control_context ;
struct TYPE_4__ {TYPE_1__* fw_control; } ;
struct TYPE_3__ {size_t retcode; } ;

/* Variables and functions */
#define  FLASH_UPDATE_COMPLETE_PENDING_REBOOT 136 
#define  FLASH_UPDATE_CRC_ERR 135 
#define  FLASH_UPDATE_DISABLED 134 
#define  FLASH_UPDATE_DNLD_NOT_SUPPORTED 133 
#define  FLASH_UPDATE_HDR_ERR 132 
#define  FLASH_UPDATE_HW_ERR 131 
#define  FLASH_UPDATE_IN_PROGRESS 130 
#define  FLASH_UPDATE_LENGTH_ERR 129 
#define  FLASH_UPDATE_OFFSET_ERR 128 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_control_ex*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pm8001_hba_info*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

int FUNC6(struct pm8001_hba_info *pm8001_ha,
		void *piomb)
{
	u32 status;
	struct fw_control_ex	fw_control_context;
	struct fw_flash_Update_resp *ppayload =
		(struct fw_flash_Update_resp *)(piomb + 4);
	u32 tag = FUNC2(ppayload->tag);
	struct pm8001_ccb_info *ccb = &pm8001_ha->ccb_info[tag];
	status = FUNC2(ppayload->status);
	FUNC3(&fw_control_context,
		ccb->fw_control_context,
		sizeof(fw_control_context));
	switch (status) {
	case FLASH_UPDATE_COMPLETE_PENDING_REBOOT:
		FUNC0(pm8001_ha,
		FUNC5(": FLASH_UPDATE_COMPLETE_PENDING_REBOOT\n"));
		break;
	case FLASH_UPDATE_IN_PROGRESS:
		FUNC0(pm8001_ha,
			FUNC5(": FLASH_UPDATE_IN_PROGRESS\n"));
		break;
	case FLASH_UPDATE_HDR_ERR:
		FUNC0(pm8001_ha,
			FUNC5(": FLASH_UPDATE_HDR_ERR\n"));
		break;
	case FLASH_UPDATE_OFFSET_ERR:
		FUNC0(pm8001_ha,
			FUNC5(": FLASH_UPDATE_OFFSET_ERR\n"));
		break;
	case FLASH_UPDATE_CRC_ERR:
		FUNC0(pm8001_ha,
			FUNC5(": FLASH_UPDATE_CRC_ERR\n"));
		break;
	case FLASH_UPDATE_LENGTH_ERR:
		FUNC0(pm8001_ha,
			FUNC5(": FLASH_UPDATE_LENGTH_ERR\n"));
		break;
	case FLASH_UPDATE_HW_ERR:
		FUNC0(pm8001_ha,
			FUNC5(": FLASH_UPDATE_HW_ERR\n"));
		break;
	case FLASH_UPDATE_DNLD_NOT_SUPPORTED:
		FUNC0(pm8001_ha,
			FUNC5(": FLASH_UPDATE_DNLD_NOT_SUPPORTED\n"));
		break;
	case FLASH_UPDATE_DISABLED:
		FUNC0(pm8001_ha,
			FUNC5(": FLASH_UPDATE_DISABLED\n"));
		break;
	default:
		FUNC0(pm8001_ha,
			FUNC5("No matched status = %d\n", status));
		break;
	}
	ccb->fw_control_context->fw_control->retcode = status;
	FUNC1(pm8001_ha->nvmd_completion);
	ccb->task = NULL;
	ccb->ccb_tag = 0xFFFFFFFF;
	FUNC4(pm8001_ha, tag);
	return 0;
}