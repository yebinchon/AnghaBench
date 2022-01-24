#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  ACK_WIDTH ; 
 int /*<<< orphan*/  ARBIT_STATUS ; 
 int /*<<< orphan*/  BM_CNT ; 
 int /*<<< orphan*/  BM_START_ADR ; 
 int /*<<< orphan*/  COMMAND_CONTROL ; 
 int /*<<< orphan*/  FIFO_REST_CNT ; 
 int /*<<< orphan*/  IRQ_STATUS ; 
 int /*<<< orphan*/  MISC_WR ; 
 int NSP32_DEBUG_MASK ; 
 int NSP32_SPECIAL_PRINT_REGISTER ; 
 int /*<<< orphan*/  OLD_SCSI_PHASE ; 
 int /*<<< orphan*/  SACK_CNT ; 
 int /*<<< orphan*/  SAVED_SACK_CNT ; 
 int /*<<< orphan*/  SCSI_BUS_CONTROL ; 
 int /*<<< orphan*/  SCSI_BUS_MONITOR ; 
 int /*<<< orphan*/  SCSI_CSB_IN ; 
 int /*<<< orphan*/  SCSI_EXECUTE_PHASE ; 
 int /*<<< orphan*/  SCSI_MSG_OUT ; 
 int /*<<< orphan*/  SCSI_OUT_LATCH_TARGET_ID ; 
 int /*<<< orphan*/  SEL_TIME_OUT ; 
 int /*<<< orphan*/  SGT_ADR ; 
 int /*<<< orphan*/  SREQ_CNT ; 
 int /*<<< orphan*/  SREQ_SMPL_RATE ; 
 int /*<<< orphan*/  SYNC_REG ; 
 int /*<<< orphan*/  TRANSFER_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void FUNC6(int base)
{
	if (!(NSP32_DEBUG_MASK & NSP32_SPECIAL_PRINT_REGISTER))
		return;

	FUNC5("Phase=0x%x, ", FUNC2(base, SCSI_BUS_MONITOR));
	FUNC5("OldPhase=0x%x, ", FUNC0(base, OLD_SCSI_PHASE));
	FUNC5("syncreg=0x%x, ", FUNC2(base, SYNC_REG));
	FUNC5("ackwidth=0x%x, ", FUNC2(base, ACK_WIDTH));
	FUNC5("sgtpaddr=0x%lx, ", FUNC4(base, SGT_ADR));
	FUNC5("scsioutlatch=0x%x, ", FUNC2(base, SCSI_OUT_LATCH_TARGET_ID));
	FUNC5("msgout=0x%lx, ", FUNC4(base, SCSI_MSG_OUT));
	FUNC5("miscrd=0x%x, ", FUNC1(base, MISC_WR));
	FUNC5("seltimeout=0x%x, ", FUNC3(base, SEL_TIME_OUT));
	FUNC5("sreqrate=0x%x, ", FUNC2(base, SREQ_SMPL_RATE));
	FUNC5("transStatus=0x%x, ", FUNC3(base, TRANSFER_STATUS));
	FUNC5("reselectid=0x%x, ", FUNC3(base, COMMAND_CONTROL));
	FUNC5("arbit=0x%x, ", FUNC2(base, ARBIT_STATUS));
	FUNC5("BmStart=0x%lx, ", FUNC4(base, BM_START_ADR));
	FUNC5("BmCount=0x%lx, ", FUNC4(base, BM_CNT));
	FUNC5("SackCnt=0x%lx, ", FUNC4(base, SACK_CNT));
	FUNC5("SReqCnt=0x%lx, ", FUNC4(base, SREQ_CNT));
	FUNC5("SavedSackCnt=0x%lx, ", FUNC4(base, SAVED_SACK_CNT));
	FUNC5("ScsiBusControl=0x%x, ", FUNC2(base, SCSI_BUS_CONTROL));
	FUNC5("FifoRestCnt=0x%x, ", FUNC3(base, FIFO_REST_CNT));
	FUNC5("CdbIn=0x%x, ", FUNC2(base, SCSI_CSB_IN));
	FUNC5("\n");

	if (0) {
		FUNC5("execph=0x%x, ", FUNC3(base, SCSI_EXECUTE_PHASE));
		FUNC5("IrqStatus=0x%x, ", FUNC3(base, IRQ_STATUS));
		FUNC5("\n");
	}
}