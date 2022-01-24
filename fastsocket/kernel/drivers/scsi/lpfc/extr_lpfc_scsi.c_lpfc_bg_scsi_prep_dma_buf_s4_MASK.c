#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct sli4_sge {int /*<<< orphan*/  word2; } ;
struct scsi_cmnd {int sc_data_direction; } ;
struct TYPE_7__ {int fcpi_parm; } ;
struct TYPE_8__ {TYPE_2__ fcpi; } ;
struct TYPE_10__ {TYPE_3__ un; } ;
struct TYPE_6__ {int /*<<< orphan*/  iocb_flag; TYPE_5__ iocb; } ;
struct lpfc_scsi_buf {int seg_cnt; int prot_seg_cnt; TYPE_1__ cur_iocbq; scalar_t__ fcp_bpl; struct fcp_cmnd* fcp_cmnd; struct scsi_cmnd* pCmd; } ;
struct lpfc_hba {int cfg_sg_seg_cnt; int cfg_total_seg_cnt; TYPE_4__* pcidev; } ;
struct fcp_cmnd {int /*<<< orphan*/  fcpDl; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_5__ IOCB_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_FCP ; 
 int /*<<< orphan*/  LPFC_IO_DIF_INSERT ; 
 int /*<<< orphan*/  LPFC_IO_DIF_PASS ; 
 int /*<<< orphan*/  LPFC_IO_DIF_STRIP ; 
#define  LPFC_PG_TYPE_DIF_BUF 136 
#define  LPFC_PG_TYPE_INVALID 135 
#define  LPFC_PG_TYPE_NO_DIF 134 
#define  SCSI_PROT_READ_INSERT 133 
#define  SCSI_PROT_READ_PASS 132 
#define  SCSI_PROT_READ_STRIP 131 
#define  SCSI_PROT_WRITE_INSERT 130 
#define  SCSI_PROT_WRITE_PASS 129 
#define  SCSI_PROT_WRITE_STRIP 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sli4_sge*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct lpfc_hba*,struct lpfc_scsi_buf*) ; 
 int FUNC7 (struct lpfc_hba*,struct scsi_cmnd*,struct sli4_sge*,int) ; 
 int FUNC8 (struct lpfc_hba*,struct scsi_cmnd*,struct sli4_sge*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC10 (struct lpfc_hba*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  lpfc_sli4_sge_last ; 
 int /*<<< orphan*/  FUNC11 (struct scsi_cmnd*) ; 
 int FUNC12 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC13 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC14 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC15 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC16 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static int
FUNC18(struct lpfc_hba *phba,
		struct lpfc_scsi_buf *lpfc_cmd)
{
	struct scsi_cmnd *scsi_cmnd = lpfc_cmd->pCmd;
	struct fcp_cmnd *fcp_cmnd = lpfc_cmd->fcp_cmnd;
	struct sli4_sge *sgl = (struct sli4_sge *)(lpfc_cmd->fcp_bpl);
	IOCB_t *iocb_cmd = &lpfc_cmd->cur_iocbq.iocb;
	uint32_t num_sge = 0;
	int datasegcnt, protsegcnt, datadir = scsi_cmnd->sc_data_direction;
	int prot_group_type = 0;
	int fcpdl;

	/*
	 * Start the lpfc command prep by bumping the sgl beyond fcp_cmnd
	 *  fcp_rsp regions to the first data sge entry
	 */
	if (FUNC15(scsi_cmnd)) {
		/*
		 * The driver stores the segment count returned from pci_map_sg
		 * because this a count of dma-mappings used to map the use_sg
		 * pages.  They are not guaranteed to be the same for those
		 * architectures that implement an IOMMU.
		 */
		datasegcnt = FUNC3(&phba->pcidev->dev,
					FUNC16(scsi_cmnd),
					FUNC15(scsi_cmnd), datadir);
		if (FUNC17(!datasegcnt))
			return 1;

		sgl += 1;
		/* clear the last flag in the fcp_rsp map entry */
		sgl->word2 = FUNC5(sgl->word2);
		FUNC1(lpfc_sli4_sge_last, sgl, 0);
		sgl->word2 = FUNC2(sgl->word2);

		sgl += 1;
		lpfc_cmd->seg_cnt = datasegcnt;

		/* First check if data segment count from SCSI Layer is good */
		if (lpfc_cmd->seg_cnt > phba->cfg_sg_seg_cnt)
			goto err;

		prot_group_type = FUNC10(phba, scsi_cmnd);

		switch (prot_group_type) {
		case LPFC_PG_TYPE_NO_DIF:
			/* Here we need to add a DISEED to the count */
			if ((lpfc_cmd->seg_cnt + 1) > phba->cfg_total_seg_cnt)
				goto err;

			num_sge = FUNC7(phba, scsi_cmnd, sgl,
					datasegcnt);

			/* we should have 2 or more entries in buffer list */
			if (num_sge < 2)
				goto err;
			break;

		case LPFC_PG_TYPE_DIF_BUF:
			/*
			 * This type indicates that protection buffers are
			 * passed to the driver, so that needs to be prepared
			 * for DMA
			 */
			protsegcnt = FUNC3(&phba->pcidev->dev,
					FUNC14(scsi_cmnd),
					FUNC13(scsi_cmnd), datadir);
			if (FUNC17(!protsegcnt)) {
				FUNC11(scsi_cmnd);
				return 1;
			}

			lpfc_cmd->prot_seg_cnt = protsegcnt;
			/*
			 * There is a minimun of 3 SGEs used for every
			 * protection data segment.
			 */
			if ((lpfc_cmd->prot_seg_cnt * 3) >
			    (phba->cfg_total_seg_cnt - 2))
				goto err;

			num_sge = FUNC8(phba, scsi_cmnd, sgl,
					datasegcnt, protsegcnt);

			/* we should have 3 or more entries in buffer list */
			if ((num_sge < 3) ||
			    (num_sge > phba->cfg_total_seg_cnt))
				goto err;
			break;

		case LPFC_PG_TYPE_INVALID:
		default:
			FUNC11(scsi_cmnd);
			lpfc_cmd->seg_cnt = 0;

			FUNC9(phba, KERN_ERR, LOG_FCP,
					"9083 Unexpected protection group %i\n",
					prot_group_type);
			return 1;
		}
	}

	switch (FUNC12(scsi_cmnd)) {
	case SCSI_PROT_WRITE_STRIP:
	case SCSI_PROT_READ_STRIP:
		lpfc_cmd->cur_iocbq.iocb_flag |= LPFC_IO_DIF_STRIP;
		break;
	case SCSI_PROT_WRITE_INSERT:
	case SCSI_PROT_READ_INSERT:
		lpfc_cmd->cur_iocbq.iocb_flag |= LPFC_IO_DIF_INSERT;
		break;
	case SCSI_PROT_WRITE_PASS:
	case SCSI_PROT_READ_PASS:
		lpfc_cmd->cur_iocbq.iocb_flag |= LPFC_IO_DIF_PASS;
		break;
	}

	fcpdl = FUNC6(phba, lpfc_cmd);
	fcp_cmnd->fcpDl = FUNC0(fcpdl);

	/*
	 * Due to difference in data length between DIF/non-DIF paths,
	 * we need to set word 4 of IOCB here
	 */
	iocb_cmd->un.fcpi.fcpi_parm = fcpdl;

	return 0;
err:
	if (lpfc_cmd->seg_cnt)
		FUNC11(scsi_cmnd);
	if (lpfc_cmd->prot_seg_cnt)
		FUNC4(&phba->pcidev->dev, FUNC14(scsi_cmnd),
			     FUNC13(scsi_cmnd),
			     scsi_cmnd->sc_data_direction);

	FUNC9(phba, KERN_ERR, LOG_FCP,
			"9084 Cannot setup S/G List for HBA"
			"IO segs %d/%d SGL %d SCSI %d: %d %d\n",
			lpfc_cmd->seg_cnt, lpfc_cmd->prot_seg_cnt,
			phba->cfg_total_seg_cnt, phba->cfg_sg_seg_cnt,
			prot_group_type, num_sge);

	lpfc_cmd->seg_cnt = 0;
	lpfc_cmd->prot_seg_cnt = 0;
	return 1;
}