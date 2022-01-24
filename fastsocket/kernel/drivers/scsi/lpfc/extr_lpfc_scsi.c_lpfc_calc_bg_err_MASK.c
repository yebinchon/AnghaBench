#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct scsi_dif_tuple {scalar_t__ app_tag; int ref_tag; scalar_t__ guard_tag; } ;
struct scsi_cmnd {int result; int /*<<< orphan*/  sense_buffer; TYPE_1__* device; } ;
struct scatterlist {int length; } ;
struct lpfc_scsi_buf {int prot_seg_cnt; struct scsi_cmnd* pCmd; } ;
struct lpfc_hba {int /*<<< orphan*/  bg_apptag_err_cnt; int /*<<< orphan*/  bg_reftag_err_cnt; int /*<<< orphan*/  bg_guard_err_cnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int BGS_APPTAG_ERR_MASK ; 
 int BGS_GUARD_ERR_MASK ; 
 int BGS_REFTAG_ERR_MASK ; 
 int /*<<< orphan*/  DID_ABORT ; 
 int DRIVER_SENSE ; 
 int /*<<< orphan*/  ILLEGAL_REQUEST ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int LOG_BG ; 
 int LOG_FCP ; 
 int /*<<< orphan*/  SAM_STAT_CHECK_CONDITION ; 
 int SCSI_PROT_NORMAL ; 
 int SCSI_PROT_READ_STRIP ; 
 int SCSI_PROT_WRITE_INSERT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC4 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC5 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*,int /*<<< orphan*/ ,int,char*,unsigned long,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC8 (struct scsi_cmnd*) ; 
 int FUNC9 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 struct scatterlist* FUNC11 (struct scsi_cmnd*) ; 
 struct scatterlist* FUNC12 (struct scsi_cmnd*) ; 
 struct scatterlist* FUNC13 (struct scatterlist*) ; 
 scalar_t__ FUNC14 (struct scatterlist*) ; 

void
FUNC15(struct lpfc_hba *phba, struct lpfc_scsi_buf *lpfc_cmd)
{
	struct scatterlist *sgpe; /* s/g prot entry */
	struct scatterlist *sgde; /* s/g data entry */
	struct scsi_cmnd *cmd = lpfc_cmd->pCmd;
	struct scsi_dif_tuple *src = NULL;
	uint8_t *data_src = NULL;
	uint16_t guard_tag, guard_type;
	uint16_t start_app_tag, app_tag;
	uint32_t start_ref_tag, ref_tag;
	int prot, protsegcnt;
	int err_type, len, data_len;
	int chk_ref, chk_app, chk_guard;
	uint16_t sum;
	unsigned blksize;

	err_type = BGS_GUARD_ERR_MASK;
	sum = 0;
	guard_tag = 0;

	/* First check to see if there is protection data to examine */
	prot = FUNC9(cmd);
	if ((prot == SCSI_PROT_READ_STRIP) ||
	    (prot == SCSI_PROT_WRITE_INSERT) ||
	    (prot == SCSI_PROT_NORMAL))
		goto out;

	/* Currently the driver just supports ref_tag and guard_tag checking */
	chk_ref = 1;
	chk_app = 0;
	chk_guard = 0;

	/* Setup a ptr to the protection data provided by the SCSI host */
	sgpe = FUNC11(cmd);
	protsegcnt = lpfc_cmd->prot_seg_cnt;

	if (sgpe && protsegcnt) {

		/*
		 * We will only try to verify guard tag if the segment
		 * data length is a multiple of the blksize.
		 */
		sgde = FUNC12(cmd);
		blksize = FUNC4(cmd);
		data_src = (uint8_t *)FUNC14(sgde);
		data_len = sgde->length;
		if ((data_len & (blksize - 1)) == 0)
			chk_guard = 1;
		guard_type = FUNC10(cmd->device->host);

		src = (struct scsi_dif_tuple *)FUNC14(sgpe);
		start_ref_tag = (uint32_t)FUNC8(cmd); /* Truncate LBA */
		start_app_tag = src->app_tag;
		len = sgpe->length;
		while (src && protsegcnt) {
			while (len) {

				/*
				 * First check to see if a protection data
				 * check is valid
				 */
				if ((src->ref_tag == 0xffffffff) ||
				    (src->app_tag == 0xffff)) {
					start_ref_tag++;
					goto skipit;
				}

				/* First Guard Tag checking */
				if (chk_guard) {
					guard_tag = src->guard_tag;
					if (FUNC5(cmd))
						sum = FUNC3(data_src,
								   blksize);
					else
						sum = FUNC2(data_src,
								  blksize);
					if ((guard_tag != sum)) {
						err_type = BGS_GUARD_ERR_MASK;
						goto out;
					}
				}

				/* Reference Tag checking */
				ref_tag = FUNC1(src->ref_tag);
				if (chk_ref && (ref_tag != start_ref_tag)) {
					err_type = BGS_REFTAG_ERR_MASK;
					goto out;
				}
				start_ref_tag++;

				/* App Tag checking */
				app_tag = src->app_tag;
				if (chk_app && (app_tag != start_app_tag)) {
					err_type = BGS_APPTAG_ERR_MASK;
					goto out;
				}
skipit:
				len -= sizeof(struct scsi_dif_tuple);
				if (len < 0)
					len = 0;
				src++;

				data_src += blksize;
				data_len -= blksize;

				/*
				 * Are we at the end of the Data segment?
				 * The data segment is only used for Guard
				 * tag checking.
				 */
				if (chk_guard && (data_len == 0)) {
					chk_guard = 0;
					sgde = FUNC13(sgde);
					if (!sgde)
						goto out;

					data_src = (uint8_t *)FUNC14(sgde);
					data_len = sgde->length;
					if ((data_len & (blksize - 1)) == 0)
						chk_guard = 1;
				}
			}

			/* Goto the next Protection data segment */
			sgpe = FUNC13(sgpe);
			if (sgpe) {
				src = (struct scsi_dif_tuple *)FUNC14(sgpe);
				len = sgpe->length;
			} else {
				src = NULL;
			}
			protsegcnt--;
		}
	}
out:
	if (err_type == BGS_GUARD_ERR_MASK) {
		FUNC7(1, cmd->sense_buffer, ILLEGAL_REQUEST,
					0x10, 0x1);
		cmd->result = DRIVER_SENSE << 24
			| FUNC0(DID_ABORT, SAM_STAT_CHECK_CONDITION);
		phba->bg_guard_err_cnt++;
		FUNC6(phba, KERN_WARNING, LOG_FCP | LOG_BG,
				"9069 BLKGRD: LBA %lx grd_tag error %x != %x\n",
				(unsigned long)FUNC8(cmd),
				sum, guard_tag);

	} else if (err_type == BGS_REFTAG_ERR_MASK) {
		FUNC7(1, cmd->sense_buffer, ILLEGAL_REQUEST,
					0x10, 0x3);
		cmd->result = DRIVER_SENSE << 24
			| FUNC0(DID_ABORT, SAM_STAT_CHECK_CONDITION);

		phba->bg_reftag_err_cnt++;
		FUNC6(phba, KERN_WARNING, LOG_FCP | LOG_BG,
				"9066 BLKGRD: LBA %lx ref_tag error %x != %x\n",
				(unsigned long)FUNC8(cmd),
				ref_tag, start_ref_tag);

	} else if (err_type == BGS_APPTAG_ERR_MASK) {
		FUNC7(1, cmd->sense_buffer, ILLEGAL_REQUEST,
					0x10, 0x2);
		cmd->result = DRIVER_SENSE << 24
			| FUNC0(DID_ABORT, SAM_STAT_CHECK_CONDITION);

		phba->bg_apptag_err_cnt++;
		FUNC6(phba, KERN_WARNING, LOG_FCP | LOG_BG,
				"9041 BLKGRD: LBA %lx app_tag error %x != %x\n",
				(unsigned long)FUNC8(cmd),
				app_tag, start_app_tag);
	}
}