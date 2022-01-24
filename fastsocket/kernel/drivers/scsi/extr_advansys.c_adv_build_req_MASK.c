#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {int cmd_len; int /*<<< orphan*/ * cmnd; TYPE_1__* device; int /*<<< orphan*/  result; int /*<<< orphan*/ * sense_buffer; } ;
struct asc_board {TYPE_2__* adv_reqp; } ;
struct TYPE_11__ {struct TYPE_11__* next_reqp; int /*<<< orphan*/ * sgblkp; struct scsi_cmnd* cmndp; int /*<<< orphan*/  scsi_req_q; } ;
typedef  TYPE_2__ adv_req_t ;
struct TYPE_13__ {int /*<<< orphan*/  sg_tablesize; } ;
struct TYPE_12__ {int cdb_len; void* data_cnt; scalar_t__ sg_real_addr; int /*<<< orphan*/ * sg_list_ptr; scalar_t__ data_addr; int /*<<< orphan*/ * vdata_addr; int /*<<< orphan*/  sense_len; void* sense_addr; int /*<<< orphan*/  target_lun; int /*<<< orphan*/  target_id; int /*<<< orphan*/ * cdb16; int /*<<< orphan*/ * cdb; int /*<<< orphan*/  srb_ptr; scalar_t__ done_status; scalar_t__ scsi_cntl; scalar_t__ cntl; } ;
struct TYPE_10__ {TYPE_6__* host; int /*<<< orphan*/  lun; int /*<<< orphan*/  id; } ;
typedef  TYPE_3__ ADV_SCSI_REQ_Q ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int ADV_MAX_SG_LIST ; 
 int ADV_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int ASC_BUSY ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *,int) ; 
 int ASC_ERROR ; 
 int ASC_NOERROR ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DID_ERROR ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int /*<<< orphan*/  adv_build_noreq ; 
 int FUNC8 (struct asc_board*,TYPE_2__*,struct scsi_cmnd*,int) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct scsi_cmnd*) ; 
 int FUNC12 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC13 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfer_cnt ; 
 int /*<<< orphan*/  xfer_elem ; 

__attribute__((used)) static int
FUNC15(struct asc_board *boardp, struct scsi_cmnd *scp,
	      ADV_SCSI_REQ_Q **adv_scsiqpp)
{
	adv_req_t *reqp;
	ADV_SCSI_REQ_Q *scsiqp;
	int i;
	int ret;
	int use_sg;

	/*
	 * Allocate an adv_req_t structure from the board to execute
	 * the command.
	 */
	if (boardp->adv_reqp == NULL) {
		FUNC2(1, "no free adv_req_t\n");
		FUNC5(scp->device->host, adv_build_noreq);
		return ASC_BUSY;
	} else {
		reqp = boardp->adv_reqp;
		boardp->adv_reqp = reqp->next_reqp;
		reqp->next_reqp = NULL;
	}

	/*
	 * Get 32-byte aligned ADV_SCSI_REQ_Q and ADV_SG_BLOCK pointers.
	 */
	scsiqp = (ADV_SCSI_REQ_Q *)FUNC0(&reqp->scsi_req_q);

	/*
	 * Initialize the structure.
	 */
	scsiqp->cntl = scsiqp->scsi_cntl = scsiqp->done_status = 0;

	/*
	 * Set the ADV_SCSI_REQ_Q 'srb_ptr' to point to the adv_req_t structure.
	 */
	scsiqp->srb_ptr = FUNC1(reqp);

	/*
	 * Set the adv_req_t 'cmndp' to point to the struct scsi_cmnd structure.
	 */
	reqp->cmndp = scp;

	/*
	 * Build the ADV_SCSI_REQ_Q request.
	 */

	/* Set CDB length and copy it to the request structure.  */
	scsiqp->cdb_len = scp->cmd_len;
	/* Copy first 12 CDB bytes to cdb[]. */
	for (i = 0; i < scp->cmd_len && i < 12; i++) {
		scsiqp->cdb[i] = scp->cmnd[i];
	}
	/* Copy last 4 CDB bytes, if present, to cdb16[]. */
	for (; i < scp->cmd_len; i++) {
		scsiqp->cdb16[i - 12] = scp->cmnd[i];
	}

	scsiqp->target_id = scp->device->id;
	scsiqp->target_lun = scp->device->lun;

	scsiqp->sense_addr = FUNC9(FUNC14(&scp->sense_buffer[0]));
	scsiqp->sense_len = SCSI_SENSE_BUFFERSIZE;

	/* Build ADV_SCSI_REQ_Q */

	use_sg = FUNC12(scp);
	if (use_sg == 0) {
		/* Zero-length transfer */
		reqp->sgblkp = NULL;
		scsiqp->data_cnt = 0;
		scsiqp->vdata_addr = NULL;

		scsiqp->data_addr = 0;
		scsiqp->sg_list_ptr = NULL;
		scsiqp->sg_real_addr = 0;
	} else {
		if (use_sg > ADV_MAX_SG_LIST) {
			FUNC10(KERN_ERR, scp, "use_sg %d > "
				   "ADV_MAX_SG_LIST %d\n", use_sg,
				   scp->device->host->sg_tablesize);
			FUNC13(scp);
			scp->result = FUNC7(DID_ERROR);

			/*
			 * Free the 'adv_req_t' structure by adding it back
			 * to the board free list.
			 */
			reqp->next_reqp = boardp->adv_reqp;
			boardp->adv_reqp = reqp;

			return ASC_ERROR;
		}

		scsiqp->data_cnt = FUNC9(FUNC11(scp));

		ret = FUNC8(boardp, reqp, scp, use_sg);
		if (ret != ADV_SUCCESS) {
			/*
			 * Free the adv_req_t structure by adding it back to
			 * the board free list.
			 */
			reqp->next_reqp = boardp->adv_reqp;
			boardp->adv_reqp = reqp;

			return ret;
		}

		FUNC6(scp->device->host, xfer_elem, use_sg);
	}

	FUNC5(scp->device->host, xfer_cnt);

	FUNC3(2, scsiqp);
	FUNC4(1, scp->cmnd, scp->cmd_len);

	*adv_scsiqpp = scsiqp;

	return ASC_NOERROR;
}