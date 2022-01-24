#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct ulp_bde64 {int dummy; } ;
struct scsi_cmnd {int sc_data_direction; } ;
struct TYPE_11__ {int fcpi_parm; } ;
struct TYPE_9__ {int bdeSize; } ;
struct TYPE_10__ {TYPE_2__ bdl; } ;
struct TYPE_12__ {TYPE_4__ fcpi; TYPE_3__ fcpi64; } ;
struct TYPE_14__ {int ulpBdeCount; int ulpLe; TYPE_5__ un; } ;
struct TYPE_8__ {TYPE_7__ iocb; } ;
struct lpfc_scsi_buf {int seg_cnt; int prot_seg_cnt; TYPE_1__ cur_iocbq; struct ulp_bde64* fcp_bpl; struct fcp_cmnd* fcp_cmnd; struct scsi_cmnd* pCmd; } ;
struct lpfc_hba {int cfg_sg_seg_cnt; int cfg_total_seg_cnt; TYPE_6__* pcidev; } ;
struct fcp_cmnd {int /*<<< orphan*/  fcpDl; } ;
struct TYPE_13__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_7__ IOCB_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_FCP ; 
#define  LPFC_PG_TYPE_DIF_BUF 130 
#define  LPFC_PG_TYPE_INVALID 129 
#define  LPFC_PG_TYPE_NO_DIF 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC3 (struct lpfc_hba*,struct lpfc_scsi_buf*) ; 
 int FUNC4 (struct lpfc_hba*,struct scsi_cmnd*,struct ulp_bde64*,int) ; 
 int FUNC5 (struct lpfc_hba*,struct scsi_cmnd*,struct ulp_bde64*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC7 (struct lpfc_hba*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC9 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC11 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static int
FUNC14(struct lpfc_hba *phba,
		struct lpfc_scsi_buf *lpfc_cmd)
{
	struct scsi_cmnd *scsi_cmnd = lpfc_cmd->pCmd;
	struct fcp_cmnd *fcp_cmnd = lpfc_cmd->fcp_cmnd;
	struct ulp_bde64 *bpl = lpfc_cmd->fcp_bpl;
	IOCB_t *iocb_cmd = &lpfc_cmd->cur_iocbq.iocb;
	uint32_t num_bde = 0;
	int datasegcnt, protsegcnt, datadir = scsi_cmnd->sc_data_direction;
	int prot_group_type = 0;
	int fcpdl;

	/*
	 * Start the lpfc command prep by bumping the bpl beyond fcp_cmnd
	 *  fcp_rsp regions to the first data bde entry
	 */
	bpl += 2;
	if (FUNC11(scsi_cmnd)) {
		/*
		 * The driver stores the segment count returned from pci_map_sg
		 * because this a count of dma-mappings used to map the use_sg
		 * pages.  They are not guaranteed to be the same for those
		 * architectures that implement an IOMMU.
		 */
		datasegcnt = FUNC1(&phba->pcidev->dev,
					FUNC12(scsi_cmnd),
					FUNC11(scsi_cmnd), datadir);
		if (FUNC13(!datasegcnt))
			return 1;

		lpfc_cmd->seg_cnt = datasegcnt;

		/* First check if data segment count from SCSI Layer is good */
		if (lpfc_cmd->seg_cnt > phba->cfg_sg_seg_cnt)
			goto err;

		prot_group_type = FUNC7(phba, scsi_cmnd);

		switch (prot_group_type) {
		case LPFC_PG_TYPE_NO_DIF:

			/* Here we need to add a PDE5 and PDE6 to the count */
			if ((lpfc_cmd->seg_cnt + 2) > phba->cfg_total_seg_cnt)
				goto err;

			num_bde = FUNC4(phba, scsi_cmnd, bpl,
					datasegcnt);
			/* we should have 2 or more entries in buffer list */
			if (num_bde < 2)
				goto err;
			break;

		case LPFC_PG_TYPE_DIF_BUF:
			/*
			 * This type indicates that protection buffers are
			 * passed to the driver, so that needs to be prepared
			 * for DMA
			 */
			protsegcnt = FUNC1(&phba->pcidev->dev,
					FUNC10(scsi_cmnd),
					FUNC9(scsi_cmnd), datadir);
			if (FUNC13(!protsegcnt)) {
				FUNC8(scsi_cmnd);
				return 1;
			}

			lpfc_cmd->prot_seg_cnt = protsegcnt;

			/*
			 * There is a minimun of 4 BPLs used for every
			 * protection data segment.
			 */
			if ((lpfc_cmd->prot_seg_cnt * 4) >
			    (phba->cfg_total_seg_cnt - 2))
				goto err;

			num_bde = FUNC5(phba, scsi_cmnd, bpl,
					datasegcnt, protsegcnt);
			/* we should have 3 or more entries in buffer list */
			if ((num_bde < 3) ||
			    (num_bde > phba->cfg_total_seg_cnt))
				goto err;
			break;

		case LPFC_PG_TYPE_INVALID:
		default:
			FUNC8(scsi_cmnd);
			lpfc_cmd->seg_cnt = 0;

			FUNC6(phba, KERN_ERR, LOG_FCP,
					"9022 Unexpected protection group %i\n",
					prot_group_type);
			return 1;
		}
	}

	/*
	 * Finish initializing those IOCB fields that are dependent on the
	 * scsi_cmnd request_buffer.  Note that the bdeSize is explicitly
	 * reinitialized since all iocb memory resources are used many times
	 * for transmit, receive, and continuation bpl's.
	 */
	iocb_cmd->un.fcpi64.bdl.bdeSize = (2 * sizeof(struct ulp_bde64));
	iocb_cmd->un.fcpi64.bdl.bdeSize += (num_bde * sizeof(struct ulp_bde64));
	iocb_cmd->ulpBdeCount = 1;
	iocb_cmd->ulpLe = 1;

	fcpdl = FUNC3(phba, lpfc_cmd);
	fcp_cmnd->fcpDl = FUNC0(fcpdl);

	/*
	 * Due to difference in data length between DIF/non-DIF paths,
	 * we need to set word 4 of IOCB here
	 */
	iocb_cmd->un.fcpi.fcpi_parm = fcpdl;

	return 0;
err:
	if (lpfc_cmd->seg_cnt)
		FUNC8(scsi_cmnd);
	if (lpfc_cmd->prot_seg_cnt)
		FUNC2(&phba->pcidev->dev, FUNC10(scsi_cmnd),
			     FUNC9(scsi_cmnd),
			     scsi_cmnd->sc_data_direction);

	FUNC6(phba, KERN_ERR, LOG_FCP,
			"9023 Cannot setup S/G List for HBA"
			"IO segs %d/%d BPL %d SCSI %d: %d %d\n",
			lpfc_cmd->seg_cnt, lpfc_cmd->prot_seg_cnt,
			phba->cfg_total_seg_cnt, phba->cfg_sg_seg_cnt,
			prot_group_type, num_bde);

	lpfc_cmd->seg_cnt = 0;
	lpfc_cmd->prot_seg_cnt = 0;
	return 1;
}