#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ushort ;
typedef  int uchar ;
struct TYPE_11__ {int /*<<< orphan*/  next_vpa; int /*<<< orphan*/  areq_vpa; } ;
struct TYPE_10__ {scalar_t__ chip_type; scalar_t__ carr_pending_cnt; TYPE_3__* carr_freelist; TYPE_3__* irq_sp; int /*<<< orphan*/  iop_base; } ;
struct TYPE_9__ {long data_cnt; int /*<<< orphan*/  a_flag; scalar_t__ cntl; int /*<<< orphan*/  target_id; scalar_t__ scsi_status; scalar_t__ host_status; int /*<<< orphan*/  done_status; } ;
typedef  int /*<<< orphan*/  AdvPortAddr ;
typedef  int ADV_VADDR ;
typedef  TYPE_1__ ADV_SCSI_REQ_Q ;
typedef  TYPE_2__ ADV_DVC_VAR ;
typedef  TYPE_3__ ADV_CARR_T ;

/* Variables and functions */
 int ADV_ASYNC_CARRIER_READY_FAILURE ; 
 scalar_t__ ADV_CHIP_ASC3550 ; 
 scalar_t__ ADV_CHIP_ASC38C0800 ; 
 int ADV_FALSE ; 
 int ADV_INTR_STATUS_INTRA ; 
 int ADV_INTR_STATUS_INTRB ; 
 int ADV_INTR_STATUS_INTRC ; 
 int /*<<< orphan*/  ADV_SCSIQ_DONE ; 
 int /*<<< orphan*/  ADV_TICKLE_A ; 
 int /*<<< orphan*/  ADV_TICKLE_NOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ADV_TRUE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  ASC_MC_INTRB_CODE ; 
 int ASC_RQ_DONE ; 
 int ASC_RQ_GOOD ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IOPB_INTR_STATUS_REG ; 
 int /*<<< orphan*/  IOPB_TICKLE ; 
 int /*<<< orphan*/  QD_NO_ERROR ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(ADV_DVC_VAR *asc_dvc)
{
	AdvPortAddr iop_base;
	uchar int_stat;
	ushort target_bit;
	ADV_CARR_T *free_carrp;
	ADV_VADDR irq_next_vpa;
	ADV_SCSI_REQ_Q *scsiq;

	iop_base = asc_dvc->iop_base;

	/* Reading the register clears the interrupt. */
	int_stat = FUNC5(iop_base, IOPB_INTR_STATUS_REG);

	if ((int_stat & (ADV_INTR_STATUS_INTRA | ADV_INTR_STATUS_INTRB |
			 ADV_INTR_STATUS_INTRC)) == 0) {
		return ADV_FALSE;
	}

	/*
	 * Notify the driver of an asynchronous microcode condition by
	 * calling the adv_async_callback function. The function
	 * is passed the microcode ASC_MC_INTRB_CODE byte value.
	 */
	if (int_stat & ADV_INTR_STATUS_INTRB) {
		uchar intrb_code;

		FUNC4(iop_base, ASC_MC_INTRB_CODE, intrb_code);

		if (asc_dvc->chip_type == ADV_CHIP_ASC3550 ||
		    asc_dvc->chip_type == ADV_CHIP_ASC38C0800) {
			if (intrb_code == ADV_ASYNC_CARRIER_READY_FAILURE &&
			    asc_dvc->carr_pending_cnt != 0) {
				FUNC6(iop_base, IOPB_TICKLE,
						     ADV_TICKLE_A);
				if (asc_dvc->chip_type == ADV_CHIP_ASC3550) {
					FUNC6(iop_base,
							     IOPB_TICKLE,
							     ADV_TICKLE_NOP);
				}
			}
		}

		FUNC7(asc_dvc, intrb_code);
	}

	/*
	 * Check if the IRQ stopper carrier contains a completed request.
	 */
	while (((irq_next_vpa =
		 FUNC10(asc_dvc->irq_sp->next_vpa)) & ASC_RQ_DONE) != 0) {
		/*
		 * Get a pointer to the newly completed ADV_SCSI_REQ_Q structure.
		 * The RISC will have set 'areq_vpa' to a virtual address.
		 *
		 * The firmware will have copied the ASC_SCSI_REQ_Q.scsiq_ptr
		 * field to the carrier ADV_CARR_T.areq_vpa field. The conversion
		 * below complements the conversion of ASC_SCSI_REQ_Q.scsiq_ptr'
		 * in AdvExeScsiQueue().
		 */
		scsiq = (ADV_SCSI_REQ_Q *)
		    FUNC1(FUNC10(asc_dvc->irq_sp->areq_vpa));

		/*
		 * Request finished with good status and the queue was not
		 * DMAed to host memory by the firmware. Set all status fields
		 * to indicate good status.
		 */
		if ((irq_next_vpa & ASC_RQ_GOOD) != 0) {
			scsiq->done_status = QD_NO_ERROR;
			scsiq->host_status = scsiq->scsi_status = 0;
			scsiq->data_cnt = 0L;
		}

		/*
		 * Advance the stopper pointer to the next carrier
		 * ignoring the lower four bits. Free the previous
		 * stopper carrier.
		 */
		free_carrp = asc_dvc->irq_sp;
		asc_dvc->irq_sp = (ADV_CARR_T *)
		    FUNC1(FUNC3(irq_next_vpa));

		free_carrp->next_vpa =
		    FUNC9(FUNC2(asc_dvc->carr_freelist));
		asc_dvc->carr_freelist = free_carrp;
		asc_dvc->carr_pending_cnt--;

		target_bit = FUNC0(scsiq->target_id);

		/*
		 * Clear request microcode control flag.
		 */
		scsiq->cntl = 0;

		/*
		 * Notify the driver of the completed request by passing
		 * the ADV_SCSI_REQ_Q pointer to its callback function.
		 */
		scsiq->a_flag |= ADV_SCSIQ_DONE;
		FUNC8(asc_dvc, scsiq);
		/*
		 * Note: After the driver callback function is called, 'scsiq'
		 * can no longer be referenced.
		 *
		 * Fall through and continue processing other completed
		 * requests...
		 */
	}
	return ADV_TRUE;
}