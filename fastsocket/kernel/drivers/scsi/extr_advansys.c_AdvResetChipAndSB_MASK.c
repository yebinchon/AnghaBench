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
typedef  scalar_t__ ushort ;
typedef  int uchar ;
struct TYPE_6__ {scalar_t__ chip_type; scalar_t__ err_code; int /*<<< orphan*/  iop_base; } ;
typedef  int /*<<< orphan*/  AdvPortAddr ;
typedef  TYPE_1__ ADV_DVC_VAR ;

/* Variables and functions */
 scalar_t__ ADV_CHIP_ASC38C0800 ; 
 scalar_t__ ADV_CHIP_ASC38C1600 ; 
 int /*<<< orphan*/  ADV_CTRL_REG_CMD_RESET ; 
 int /*<<< orphan*/  ADV_CTRL_REG_CMD_WR_IO_REG ; 
 int ADV_FALSE ; 
 int ADV_MAX_TID ; 
 int /*<<< orphan*/  ADV_RISC_CSR_STOP ; 
 int ADV_TRUE ; 
 int /*<<< orphan*/  ASC_MC_BIOS_SIGNATURE ; 
 scalar_t__ ASC_MC_NUMBER_OF_MAX_CMD ; 
 int /*<<< orphan*/  ASC_MC_PPR_ABLE ; 
 int /*<<< orphan*/  ASC_MC_SDTR_ABLE ; 
 int /*<<< orphan*/  ASC_MC_TAGQNG_ABLE ; 
 int /*<<< orphan*/  ASC_MC_WDTR_ABLE ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IOPW_CTRL_REG ; 
 int /*<<< orphan*/  IOPW_RISC_CSR ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(ADV_DVC_VAR *asc_dvc)
{
	int status;
	ushort wdtr_able, sdtr_able, tagqng_able;
	ushort ppr_able = 0;
	uchar tid, max_cmd[ADV_MAX_TID + 1];
	AdvPortAddr iop_base;
	ushort bios_sig;

	iop_base = asc_dvc->iop_base;

	/*
	 * Save current per TID negotiated values.
	 */
	FUNC4(iop_base, ASC_MC_WDTR_ABLE, wdtr_able);
	FUNC4(iop_base, ASC_MC_SDTR_ABLE, sdtr_able);
	if (asc_dvc->chip_type == ADV_CHIP_ASC38C1600) {
		FUNC4(iop_base, ASC_MC_PPR_ABLE, ppr_able);
	}
	FUNC4(iop_base, ASC_MC_TAGQNG_ABLE, tagqng_able);
	for (tid = 0; tid <= ADV_MAX_TID; tid++) {
		FUNC3(iop_base, ASC_MC_NUMBER_OF_MAX_CMD + tid,
				max_cmd[tid]);
	}

	/*
	 * Force the AdvInitAsc3550/38C0800Driver() function to
	 * perform a SCSI Bus Reset by clearing the BIOS signature word.
	 * The initialization functions assumes a SCSI Bus Reset is not
	 * needed if the BIOS signature word is present.
	 */
	FUNC4(iop_base, ASC_MC_BIOS_SIGNATURE, bios_sig);
	FUNC6(iop_base, ASC_MC_BIOS_SIGNATURE, 0);

	/*
	 * Stop chip and reset it.
	 */
	FUNC7(iop_base, IOPW_RISC_CSR, ADV_RISC_CSR_STOP);
	FUNC7(iop_base, IOPW_CTRL_REG, ADV_CTRL_REG_CMD_RESET);
	FUNC8(100);
	FUNC7(iop_base, IOPW_CTRL_REG,
			     ADV_CTRL_REG_CMD_WR_IO_REG);

	/*
	 * Reset Adv Library error code, if any, and try
	 * re-initializing the chip.
	 */
	asc_dvc->err_code = 0;
	if (asc_dvc->chip_type == ADV_CHIP_ASC38C1600) {
		status = FUNC2(asc_dvc);
	} else if (asc_dvc->chip_type == ADV_CHIP_ASC38C0800) {
		status = FUNC1(asc_dvc);
	} else {
		status = FUNC0(asc_dvc);
	}

	/* Translate initialization return value to status value. */
	if (status == 0) {
		status = ADV_TRUE;
	} else {
		status = ADV_FALSE;
	}

	/*
	 * Restore the BIOS signature word.
	 */
	FUNC6(iop_base, ASC_MC_BIOS_SIGNATURE, bios_sig);

	/*
	 * Restore per TID negotiated values.
	 */
	FUNC6(iop_base, ASC_MC_WDTR_ABLE, wdtr_able);
	FUNC6(iop_base, ASC_MC_SDTR_ABLE, sdtr_able);
	if (asc_dvc->chip_type == ADV_CHIP_ASC38C1600) {
		FUNC6(iop_base, ASC_MC_PPR_ABLE, ppr_able);
	}
	FUNC6(iop_base, ASC_MC_TAGQNG_ABLE, tagqng_able);
	for (tid = 0; tid <= ADV_MAX_TID; tid++) {
		FUNC5(iop_base, ASC_MC_NUMBER_OF_MAX_CMD + tid,
				 max_cmd[tid]);
	}

	return status;
}