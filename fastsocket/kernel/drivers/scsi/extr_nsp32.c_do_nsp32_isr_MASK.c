#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* Status; } ;
struct scsi_cmnd {int result; TYPE_1__ SCp; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
struct TYPE_8__ {unsigned int BaseAddress; int msgout_len; struct scsi_cmnd* CurrentSC; struct Scsi_Host* Host; } ;
typedef  TYPE_2__ nsp32_hw_data ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned short AUTOSCSI_BUSY ; 
 int /*<<< orphan*/  BM_CNT ; 
 unsigned char BUSMON_PHASE_MASK ; 
#define  BUSPHASE_DATA_IN 131 
#define  BUSPHASE_DATA_OUT 130 
#define  BUSPHASE_MESSAGE_IN 129 
#define  BUSPHASE_STATUS 128 
 unsigned short BUS_FREE_OCCUER ; 
 unsigned short COMMAND_PHASE ; 
 unsigned short DATA_IN_PHASE ; 
 unsigned short DATA_OUT_PHASE ; 
 int DID_BAD_TARGET ; 
 int DID_RESET ; 
 int DID_TIME_OUT ; 
 int /*<<< orphan*/  FIFO_REST_CNT ; 
 unsigned short FIFO_REST_MASK ; 
 unsigned short ILLEGAL_PHASE ; 
 unsigned short IRQSTATUS_ANY_IRQ ; 
 unsigned short IRQSTATUS_AUTOSCSI_IRQ ; 
 unsigned short IRQSTATUS_BMCNTERR_IRQ ; 
 unsigned short IRQSTATUS_FIFO_SHLD_IRQ ; 
 unsigned short IRQSTATUS_PCI_IRQ ; 
 unsigned short IRQSTATUS_PHASE_CHANGE_IRQ ; 
 unsigned short IRQSTATUS_SCSIRESET_IRQ ; 
 unsigned short IRQSTATUS_TIMER_IRQ ; 
 int /*<<< orphan*/  IRQ_CONTROL ; 
 int /*<<< orphan*/  IRQ_CONTROL_ALL_IRQ_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_STATUS ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 unsigned short MSGOUT_PHASE ; 
 unsigned short MSG_IN_OCCUER ; 
 unsigned short MSG_OUT_OCCUER ; 
 int /*<<< orphan*/  NEGATE ; 
 int /*<<< orphan*/  NSP32_DEBUG_INTR ; 
 int /*<<< orphan*/  SACK_CNT ; 
 int /*<<< orphan*/  SAVED_SACK_CNT ; 
 int /*<<< orphan*/  SCSI_BUS_MONITOR ; 
 int /*<<< orphan*/  SCSI_CSB_IN ; 
 int /*<<< orphan*/  SCSI_EXECUTE_PHASE ; 
 unsigned short SELECTION_TIMEOUT ; 
 int /*<<< orphan*/  SGT_ADR ; 
 unsigned short STATUS_PHASE ; 
 int /*<<< orphan*/  TIMER_SET ; 
 int /*<<< orphan*/  TIMER_STOP ; 
 int /*<<< orphan*/  TRANSFER_STATUS ; 
 int TRUE ; 
 int FUNC1 (struct scsi_cmnd*,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*) ; 
 void* FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned short FUNC8 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 scalar_t__ FUNC16 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC17 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (unsigned short) ; 
 int /*<<< orphan*/  FUNC19 (unsigned char) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC22(int irq, void *dev_id)
{
	nsp32_hw_data *data = dev_id;
	unsigned int base = data->BaseAddress;
	struct scsi_cmnd *SCpnt = data->CurrentSC;
	unsigned short auto_stat, irq_stat, trans_stat;
	unsigned char busmon, busphase;
	unsigned long flags;
	int ret;
	int handled = 0;
	struct Scsi_Host *host = data->Host;

	FUNC20(host->host_lock, flags);

	/*
	 * IRQ check, then enable IRQ mask
	 */
	irq_stat = FUNC8(base, IRQ_STATUS);
	FUNC2(NSP32_DEBUG_INTR, 
		  "enter IRQ: %d, IRQstatus: 0x%x", irq, irq_stat);
	/* is this interrupt comes from Ninja asic? */
	if ((irq_stat & IRQSTATUS_ANY_IRQ) == 0) {
		FUNC2(NSP32_DEBUG_INTR, "shared interrupt: irq other 0x%x", irq_stat);
		goto out2;
	}
	handled = 1;
	FUNC14(base, IRQ_CONTROL, IRQ_CONTROL_ALL_IRQ_MASK);

	busmon = FUNC7(base, SCSI_BUS_MONITOR);
	busphase = busmon & BUSMON_PHASE_MASK;

	trans_stat = FUNC8(base, TRANSFER_STATUS);
	if ((irq_stat == 0xffff) && (trans_stat == 0xffff)) {
		FUNC4(KERN_INFO, "card disconnect");
		if (data->CurrentSC != NULL) {
			FUNC4(KERN_INFO, "clean up current SCSI command");
			SCpnt->result = DID_BAD_TARGET << 16;
			FUNC12(SCpnt);
		}
		goto out;
	}

	/* Timer IRQ */
	if (irq_stat & IRQSTATUS_TIMER_IRQ) {
		FUNC2(NSP32_DEBUG_INTR, "timer stop");
		FUNC14(base, TIMER_SET, TIMER_STOP);
		goto out;
	}

	/* SCSI reset */
	if (irq_stat & IRQSTATUS_SCSIRESET_IRQ) {
		FUNC4(KERN_INFO, "detected someone do bus reset");
		FUNC3(data);
		if (SCpnt != NULL) {
			SCpnt->result = DID_RESET << 16;
			FUNC12(SCpnt);
		}
		goto out;
	}

	if (SCpnt == NULL) {
		FUNC4(KERN_WARNING, "SCpnt==NULL this can't be happened");
		FUNC4(KERN_WARNING, "irq_stat=0x%x trans_stat=0x%x", irq_stat, trans_stat);
		goto out;
	}

	/*
	 * AutoSCSI Interrupt.
	 * Note: This interrupt is occurred when AutoSCSI is finished.  Then
	 * check SCSIEXECUTEPHASE, and do appropriate action.  Each phases are
	 * recorded when AutoSCSI sequencer has been processed.
	 */
	if(irq_stat & IRQSTATUS_AUTOSCSI_IRQ) {
		/* getting SCSI executed phase */
		auto_stat = FUNC8(base, SCSI_EXECUTE_PHASE);
		FUNC14(base, SCSI_EXECUTE_PHASE, 0);

		/* Selection Timeout, go busfree phase. */
		if (auto_stat & SELECTION_TIMEOUT) {
			FUNC2(NSP32_DEBUG_INTR,
				  "selection timeout occurred");

			SCpnt->result = DID_TIME_OUT << 16;
			FUNC12(SCpnt);
			goto out;
		}

		if (auto_stat & MSGOUT_PHASE) {
			/*
			 * MsgOut phase was processed.
			 * If MSG_IN_OCCUER is not set, then MsgOut phase is
			 * completed. Thus, msgout_len must reset.  Otherwise,
			 * nothing to do here. If MSG_OUT_OCCUER is occurred,
			 * then we will encounter the condition and check.
			 */
			if (!(auto_stat & MSG_IN_OCCUER) &&
			     (data->msgout_len <= 3)) {
				/*
				 * !MSG_IN_OCCUER && msgout_len <=3
				 *   ---> AutoSCSI with MSGOUTreg is processed.
				 */
				data->msgout_len = 0;
			};

			FUNC2(NSP32_DEBUG_INTR, "MsgOut phase processed");
		}

		if ((auto_stat & DATA_IN_PHASE) &&
		    (FUNC16(SCpnt) > 0) &&
		    ((FUNC8(base, FIFO_REST_CNT) & FIFO_REST_MASK) != 0)) {
			FUNC15( "auto+fifo\n");
			//nsp32_pio_read(SCpnt);
		}

		if (auto_stat & (DATA_IN_PHASE | DATA_OUT_PHASE)) {
			/* DATA_IN_PHASE/DATA_OUT_PHASE was processed. */
			FUNC2(NSP32_DEBUG_INTR,
				  "Data in/out phase processed");

			/* read BMCNT, SGT pointer addr */
			FUNC2(NSP32_DEBUG_INTR, "BMCNT=0x%lx", 
				    FUNC9(base, BM_CNT));
			FUNC2(NSP32_DEBUG_INTR, "addr=0x%lx", 
				    FUNC9(base, SGT_ADR));
			FUNC2(NSP32_DEBUG_INTR, "SACK=0x%lx", 
				    FUNC9(base, SACK_CNT));
			FUNC2(NSP32_DEBUG_INTR, "SSACK=0x%lx", 
				    FUNC9(base, SAVED_SACK_CNT));

			FUNC17(SCpnt, 0); /* all data transfered! */
		}

		/*
		 * MsgIn Occur
		 */
		if (auto_stat & MSG_IN_OCCUER) {
			FUNC5(SCpnt, irq_stat, auto_stat);
		}

		/*
		 * MsgOut Occur
		 */
		if (auto_stat & MSG_OUT_OCCUER) {
			FUNC6(SCpnt);
		}

		/*
		 * Bus Free Occur
		 */
		if (auto_stat & BUS_FREE_OCCUER) {
			ret = FUNC1(SCpnt, auto_stat);
			if (ret == TRUE) {
				goto out;
			}
		}

		if (auto_stat & STATUS_PHASE) {
			/*
			 * Read CSB and substitute CSB for SCpnt->result
			 * to save status phase stutas byte.
			 * scsi error handler checks host_byte (DID_*:
			 * low level driver to indicate status), then checks 
			 * status_byte (SCSI status byte).
			 */
			SCpnt->result =	(int)FUNC7(base, SCSI_CSB_IN);
		}

		if (auto_stat & ILLEGAL_PHASE) {
			/* Illegal phase is detected. SACK is not back. */
			FUNC4(KERN_WARNING, 
				  "AUTO SCSI ILLEGAL PHASE OCCUR!!!!");

			/* TODO: currently we don't have any action... bus reset? */

			/*
			 * To send back SACK, assert, wait, and negate.
			 */
			FUNC10(data);
			FUNC13(data, NEGATE);
			FUNC11(data);

		}

		if (auto_stat & COMMAND_PHASE) {
			/* nothing to do */
			FUNC2(NSP32_DEBUG_INTR, "Command phase processed");
		}

		if (auto_stat & AUTOSCSI_BUSY) {
			/* AutoSCSI is running */
		}

		FUNC18(auto_stat);
	}

	/* FIFO_SHLD_IRQ */
	if (irq_stat & IRQSTATUS_FIFO_SHLD_IRQ) {
		FUNC2(NSP32_DEBUG_INTR, "FIFO IRQ");

		switch(busphase) {
		case BUSPHASE_DATA_OUT:
			FUNC2(NSP32_DEBUG_INTR, "fifo/write");

			//nsp32_pio_write(SCpnt);

			break;

		case BUSPHASE_DATA_IN:
			FUNC2(NSP32_DEBUG_INTR, "fifo/read");

			//nsp32_pio_read(SCpnt);

			break;

		case BUSPHASE_STATUS:
			FUNC2(NSP32_DEBUG_INTR, "fifo/status");

			SCpnt->SCp.Status = FUNC7(base, SCSI_CSB_IN);

			break;
		default:
			FUNC2(NSP32_DEBUG_INTR, "fifo/other phase");
			FUNC2(NSP32_DEBUG_INTR, "irq_stat=0x%x trans_stat=0x%x", irq_stat, trans_stat);
			FUNC19(busphase);
			break;
		}

		goto out;
	}

	/* Phase Change IRQ */
	if (irq_stat & IRQSTATUS_PHASE_CHANGE_IRQ) {
		FUNC2(NSP32_DEBUG_INTR, "phase change IRQ");

		switch(busphase) {
		case BUSPHASE_MESSAGE_IN:
			FUNC2(NSP32_DEBUG_INTR, "phase chg/msg in");
			FUNC5(SCpnt, irq_stat, 0);
			break;
		default:
			FUNC4(KERN_WARNING, "phase chg/other phase?");
			FUNC4(KERN_WARNING, "irq_stat=0x%x trans_stat=0x%x\n",
				  irq_stat, trans_stat);
			FUNC19(busphase);
			break;
		}
		goto out;
	}

	/* PCI_IRQ */
	if (irq_stat & IRQSTATUS_PCI_IRQ) {
		FUNC2(NSP32_DEBUG_INTR, "PCI IRQ occurred");
		/* Do nothing */
	}

	/* BMCNTERR_IRQ */
	if (irq_stat & IRQSTATUS_BMCNTERR_IRQ) {
		FUNC4(KERN_ERR, "Received unexpected BMCNTERR IRQ! ");
		/*
		 * TODO: To be implemented improving bus master
		 * transfer reliablity when BMCNTERR is occurred in
		 * AutoSCSI phase described in specification.
		 */
	}

#if 0
	nsp32_dbg(NSP32_DEBUG_INTR,
		  "irq_stat=0x%x trans_stat=0x%x", irq_stat, trans_stat);
	show_busphase(busphase);
#endif

 out:
	/* disable IRQ mask */
	FUNC14(base, IRQ_CONTROL, 0);

 out2:
	FUNC21(host->host_lock, flags);

	FUNC2(NSP32_DEBUG_INTR, "exit");

	return FUNC0(handled);
}