#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int Status; int Message; } ;
struct scsi_cmnd {int result; TYPE_4__ SCp; TYPE_2__* device; } ;
struct TYPE_12__ {TYPE_7__* cur_target; TYPE_3__* cur_lunt; } ;
typedef  TYPE_5__ nsp32_hw_data ;
struct TYPE_13__ {int sync_flag; } ;
struct TYPE_10__ {int msgin03; } ;
struct TYPE_9__ {TYPE_1__* host; } ;
struct TYPE_8__ {unsigned int io_port; scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  BM_CNT ; 
 unsigned short DATA_IN_PHASE ; 
 unsigned short DATA_OUT_PHASE ; 
 int DID_ERROR ; 
 int DID_OK ; 
 int FALSE ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 unsigned short MSGIN_00_VALID ; 
 unsigned short MSGIN_02_VALID ; 
 unsigned short MSGIN_03_VALID ; 
 unsigned short MSGIN_04_VALID ; 
 int /*<<< orphan*/  NSP32_DEBUG_BUSFREE ; 
 int /*<<< orphan*/  SACK_CNT ; 
 int /*<<< orphan*/  SAVED_SACK_CNT ; 
 int /*<<< orphan*/  SCSI_CSB_IN ; 
 int SDTR_DONE ; 
 int SDTR_INITIATOR ; 
 int SDTR_TARGET ; 
 int /*<<< orphan*/  TRANSFER_CONTROL ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_cmnd*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned short) ; 

__attribute__((used)) static int FUNC11(struct scsi_cmnd *SCpnt, unsigned short execph)
{
	nsp32_hw_data *data = (nsp32_hw_data *)SCpnt->device->host->hostdata;
	unsigned int base   = SCpnt->device->host->io_port;

	FUNC1(NSP32_DEBUG_BUSFREE, "enter execph=0x%x", execph);
	FUNC10(execph);

	FUNC8(base, BM_CNT,           0);
	FUNC7(base, TRANSFER_CONTROL, 0);

	/*
	 * MsgIn 02: Save Data Pointer
	 *
	 * VALID:
	 *   Save Data Pointer is received. Adjust pointer.
	 *   
	 * NO-VALID:
	 *   SCSI-3 says if Save Data Pointer is not received, then we restart
	 *   processing and we can't adjust any SCSI data pointer in next data
	 *   phase.
	 */
	if (execph & MSGIN_02_VALID) {
		FUNC1(NSP32_DEBUG_BUSFREE, "MsgIn02_Valid");

		/*
		 * Check sack_cnt/saved_sack_cnt, then adjust sg table if
		 * needed.
		 */
		if (!(execph & MSGIN_00_VALID) && 
		    ((execph & DATA_IN_PHASE) || (execph & DATA_OUT_PHASE))) {
			unsigned int sacklen, s_sacklen;

			/*
			 * Read SACK count and SAVEDSACK count, then compare.
			 */
			sacklen   = FUNC4(base, SACK_CNT      );
			s_sacklen = FUNC4(base, SAVED_SACK_CNT);

			/*
			 * If SAVEDSACKCNT == 0, it means SavedDataPointer is
			 * come after data transfering.
			 */
			if (s_sacklen > 0) {
				/*
				 * Comparing between sack and savedsack to
				 * check the condition of AutoMsgIn03.
				 *
				 * If they are same, set msgin03 == TRUE,
				 * COMMANDCONTROL_AUTO_MSGIN_03 is enabled at
				 * reselection.  On the other hand, if they
				 * aren't same, set msgin03 == FALSE, and
				 * COMMANDCONTROL_AUTO_MSGIN_03 is disabled at
				 * reselection.
				 */
				if (sacklen != s_sacklen) {
					data->cur_lunt->msgin03 = FALSE;
				} else {
					data->cur_lunt->msgin03 = TRUE;
				}

				FUNC0(SCpnt, s_sacklen);
			}
		}

		/* This value has not substitude with valid value yet... */
		//data->cur_lunt->save_datp = data->cur_datp;
	} else {
		/*
		 * no processing.
		 */
	}
	
	if (execph & MSGIN_03_VALID) {
		/* MsgIn03 was valid to be processed. No need processing. */
	}

	/*
	 * target SDTR check
	 */
	if (data->cur_target->sync_flag & SDTR_INITIATOR) {
		/*
		 * SDTR negotiation pulled by the initiator has not
		 * finished yet. Fall back to ASYNC mode.
		 */
		FUNC6(data, data->cur_target);
		data->cur_target->sync_flag &= ~SDTR_INITIATOR;
		data->cur_target->sync_flag |= SDTR_DONE;
	} else if (data->cur_target->sync_flag & SDTR_TARGET) {
		/*
		 * SDTR negotiation pulled by the target has been
		 * negotiating.
		 */
		if (execph & (MSGIN_00_VALID | MSGIN_04_VALID)) {
			/* 
			 * If valid message is received, then
			 * negotiation is succeeded.
			 */
		} else {
			/*
			 * On the contrary, if unexpected bus free is
			 * occurred, then negotiation is failed. Fall
			 * back to ASYNC mode.
			 */
			FUNC6(data, data->cur_target);
		}
		data->cur_target->sync_flag &= ~SDTR_TARGET;
		data->cur_target->sync_flag |= SDTR_DONE;
	}

	/*
	 * It is always ensured by SCSI standard that initiator
	 * switches into Bus Free Phase after
	 * receiving message 00 (Command Complete), 04 (Disconnect).
	 * It's the reason that processing here is valid.
	 */
	if (execph & MSGIN_00_VALID) {
		/* MsgIn 00: Command Complete */
		FUNC1(NSP32_DEBUG_BUSFREE, "command complete");

		SCpnt->SCp.Status  = FUNC3(base, SCSI_CSB_IN);
		SCpnt->SCp.Message = 0;
		FUNC1(NSP32_DEBUG_BUSFREE, 
			  "normal end stat=0x%x resid=0x%x\n",
			  SCpnt->SCp.Status, FUNC9(SCpnt));
		SCpnt->result = (DID_OK             << 16) |
			        (SCpnt->SCp.Message <<  8) |
			        (SCpnt->SCp.Status  <<  0);
		FUNC5(SCpnt);
		/* All operation is done */
		return TRUE;
	} else if (execph & MSGIN_04_VALID) {
		/* MsgIn 04: Disconnect */
		SCpnt->SCp.Status  = FUNC3(base, SCSI_CSB_IN);
		SCpnt->SCp.Message = 4;
		
		FUNC1(NSP32_DEBUG_BUSFREE, "disconnect");
		return TRUE;
	} else {
		/* Unexpected bus free */
		FUNC2(KERN_WARNING, "unexpected bus free occurred");

		/* DID_ERROR? */
		//SCpnt->result   = (DID_OK << 16) | (SCpnt->SCp.Message << 8) | (SCpnt->SCp.Status << 0);
		SCpnt->result = DID_ERROR << 16;
		FUNC5(SCpnt);
		return TRUE;
	}
	return FALSE;
}