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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
struct TYPE_4__ {TYPE_1__* region; } ;
struct pm8001_hba_info {int /*<<< orphan*/  nvmd_completion; TYPE_2__ memoryMap; int /*<<< orphan*/  sas_addr; struct pm8001_ccb_info* ccb_info; } ;
struct pm8001_ccb_info {int ccb_tag; int /*<<< orphan*/ * task; struct fw_control_ex* fw_control_context; } ;
struct get_nvm_data_resp {int /*<<< orphan*/  ir_tda_bn_dps_das_nvm; int /*<<< orphan*/  dlen_status; int /*<<< orphan*/  tag; } ;
struct fw_control_ex {int /*<<< orphan*/  len; int /*<<< orphan*/  usrAddr; } ;
struct TYPE_3__ {int /*<<< orphan*/ * virt_ptr; } ;

/* Variables and functions */
 size_t AAP1_RDUMP ; 
 size_t C_SEEPROM ; 
 size_t EXPAN_ROM ; 
 size_t IOP_RDUMP ; 
 size_t IPMode ; 
 size_t NVMD ; 
 size_t NVMD_LEN ; 
 size_t NVMD_STAT ; 
 size_t NVMD_TYPE ; 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SAS_ADDR_SIZE ; 
 size_t TWI_DEVICE ; 
 size_t VPD_FLASH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pm8001_hba_info*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

void
FUNC7(struct pm8001_hba_info *pm8001_ha, void *piomb)
{
	struct fw_control_ex	*fw_control_context;
	struct get_nvm_data_resp *pPayload =
		(struct get_nvm_data_resp *)(piomb + 4);
	u32 tag = FUNC3(pPayload->tag);
	struct pm8001_ccb_info *ccb = &pm8001_ha->ccb_info[tag];
	u32 dlen_status = FUNC3(pPayload->dlen_status);
	u32 ir_tds_bn_dps_das_nvm =
		FUNC3(pPayload->ir_tda_bn_dps_das_nvm);
	void *virt_addr = pm8001_ha->memoryMap.region[NVMD].virt_ptr;
	fw_control_context = ccb->fw_control_context;

	FUNC1(pm8001_ha, FUNC6("Get nvm data complete!\n"));
	if ((dlen_status & NVMD_STAT) != 0) {
		FUNC0(pm8001_ha,
			FUNC6("Get nvm data error!\n"));
		FUNC2(pm8001_ha->nvmd_completion);
		return;
	}

	if (ir_tds_bn_dps_das_nvm & IPMode) {
		/* indirect mode - IR bit set */
		FUNC1(pm8001_ha,
			FUNC6("Get NVMD success, IR=1\n"));
		if ((ir_tds_bn_dps_das_nvm & NVMD_TYPE) == TWI_DEVICE) {
			if (ir_tds_bn_dps_das_nvm == 0x80a80200) {
				FUNC4(pm8001_ha->sas_addr,
				      ((u8 *)virt_addr + 4),
				       SAS_ADDR_SIZE);
				FUNC1(pm8001_ha,
					FUNC6("Get SAS address"
					" from VPD successfully!\n"));
			}
		} else if (((ir_tds_bn_dps_das_nvm & NVMD_TYPE) == C_SEEPROM)
			|| ((ir_tds_bn_dps_das_nvm & NVMD_TYPE) == VPD_FLASH) ||
			((ir_tds_bn_dps_das_nvm & NVMD_TYPE) == EXPAN_ROM)) {
				;
		} else if (((ir_tds_bn_dps_das_nvm & NVMD_TYPE) == AAP1_RDUMP)
			|| ((ir_tds_bn_dps_das_nvm & NVMD_TYPE) == IOP_RDUMP)) {
			;
		} else {
			/* Should not be happened*/
			FUNC1(pm8001_ha,
				FUNC6("(IR=1)Wrong Device type 0x%x\n",
				ir_tds_bn_dps_das_nvm));
		}
	} else /* direct mode */{
		FUNC1(pm8001_ha,
			FUNC6("Get NVMD success, IR=0, dataLen=%d\n",
			(dlen_status & NVMD_LEN) >> 24));
	}
	FUNC4(fw_control_context->usrAddr,
		pm8001_ha->memoryMap.region[NVMD].virt_ptr,
		fw_control_context->len);
	FUNC2(pm8001_ha->nvmd_completion);
	ccb->task = NULL;
	ccb->ccb_tag = 0xFFFFFFFF;
	FUNC5(pm8001_ha, tag);
}