#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ushort ;
typedef  int uchar ;
struct TYPE_6__ {int init_state; scalar_t__ in_critical_cnt; int is_in_int; int bus_type; int dvc_cntl; scalar_t__ sdtr_done; int /*<<< orphan*/  iop_base; } ;
typedef  int /*<<< orphan*/  PortAddr ;
typedef  TYPE_1__ ASC_DVC_VAR ;
typedef  int ASC_CS_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  ASCQ_ERR_ISR_ON_CRITICAL ; 
 int /*<<< orphan*/  ASCQ_ERR_ISR_RE_ENTRY ; 
 int /*<<< orphan*/  ASCV_HOST_FLAG_B ; 
 int ASC_CNTL_INT_MULTI_Q ; 
 scalar_t__ ASC_HOST_FLAG_IN_ISR ; 
 int ASC_INIT_STATE_END_LOAD_MC ; 
 int ASC_IS_EISA ; 
 int ASC_IS_VL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int CC_CHIP_RESET ; 
 int CC_DIAG ; 
 int CC_HALT ; 
 int CC_SCSI_RESET ; 
 int CC_SINGLE_STEP ; 
 int CC_TEST ; 
 int /*<<< orphan*/  CIW_CLR_SCSI_RESET_INT ; 
 int CSW_HALTED ; 
 int CSW_INT_PENDING ; 
 int CSW_SCSI_RESET_ACTIVE ; 
 int CSW_SCSI_RESET_LATCH ; 
 int ERR ; 
 void* FALSE ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(ASC_DVC_VAR *asc_dvc)
{
	ASC_CS_TYPE chipstat;
	PortAddr iop_base;
	ushort saved_ram_addr;
	uchar ctrl_reg;
	uchar saved_ctrl_reg;
	int int_pending;
	int status;
	uchar host_flag;

	iop_base = asc_dvc->iop_base;
	int_pending = FALSE;

	if (FUNC4(iop_base) == 0)
		return int_pending;

	if ((asc_dvc->init_state & ASC_INIT_STATE_END_LOAD_MC) == 0) {
		return ERR;
	}
	if (asc_dvc->in_critical_cnt != 0) {
		FUNC11(asc_dvc, ASCQ_ERR_ISR_ON_CRITICAL);
		return ERR;
	}
	if (asc_dvc->is_in_int) {
		FUNC11(asc_dvc, ASCQ_ERR_ISR_RE_ENTRY);
		return ERR;
	}
	asc_dvc->is_in_int = TRUE;
	ctrl_reg = FUNC1(iop_base);
	saved_ctrl_reg = ctrl_reg & (~(CC_SCSI_RESET | CC_CHIP_RESET |
				       CC_SINGLE_STEP | CC_DIAG | CC_TEST));
	chipstat = FUNC3(iop_base);
	if (chipstat & CSW_SCSI_RESET_LATCH) {
		if (!(asc_dvc->bus_type & (ASC_IS_VL | ASC_IS_EISA))) {
			int i = 10;
			int_pending = TRUE;
			asc_dvc->sdtr_done = 0;
			saved_ctrl_reg &= (uchar)(~CC_HALT);
			while ((FUNC3(iop_base) &
				CSW_SCSI_RESET_ACTIVE) && (i-- > 0)) {
				FUNC13(100);
			}
			FUNC8(iop_base, (CC_CHIP_RESET | CC_HALT));
			FUNC8(iop_base, CC_HALT);
			FUNC10(iop_base, CIW_CLR_SCSI_RESET_INT);
			FUNC10(iop_base, 0);
			chipstat = FUNC3(iop_base);
		}
	}
	saved_ram_addr = FUNC2(iop_base);
	host_flag = FUNC7(iop_base,
				    ASCV_HOST_FLAG_B) &
	    (uchar)(~ASC_HOST_FLAG_IN_ISR);
	FUNC12(iop_base, ASCV_HOST_FLAG_B,
			 (uchar)(host_flag | (uchar)ASC_HOST_FLAG_IN_ISR));
	if ((chipstat & CSW_INT_PENDING) || (int_pending)) {
		FUNC0(iop_base);
		int_pending = TRUE;
		if ((chipstat & CSW_HALTED) && (ctrl_reg & CC_SINGLE_STEP)) {
			if (FUNC5(asc_dvc) == ERR) {
				goto ISR_REPORT_QDONE_FATAL_ERROR;
			} else {
				saved_ctrl_reg &= (uchar)(~CC_HALT);
			}
		} else {
 ISR_REPORT_QDONE_FATAL_ERROR:
			if ((asc_dvc->dvc_cntl & ASC_CNTL_INT_MULTI_Q) != 0) {
				while (((status =
					 FUNC6(asc_dvc)) & 0x01) != 0) {
				}
			} else {
				do {
					if ((status =
					     FUNC6(asc_dvc)) == 1) {
						break;
					}
				} while (status == 0x11);
			}
			if ((status & 0x80) != 0)
				int_pending = ERR;
		}
	}
	FUNC12(iop_base, ASCV_HOST_FLAG_B, host_flag);
	FUNC9(iop_base, saved_ram_addr);
	FUNC8(iop_base, saved_ctrl_reg);
	asc_dvc->is_in_int = FALSE;
	return int_pending;
}