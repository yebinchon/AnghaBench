#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_11__ {scalar_t__ numRiocb; scalar_t__ rspidx; scalar_t__ local_getidx; } ;
struct TYPE_12__ {TYPE_3__ sli3; } ;
struct TYPE_13__ {int /*<<< orphan*/  iocb_cmd_empty; int /*<<< orphan*/  iocb_rsp_full; int /*<<< orphan*/  iocb_rsp; int /*<<< orphan*/  iocb_event; } ;
struct lpfc_sli_ring {size_t ringno; int flag; int /*<<< orphan*/  (* lpfc_sli_cmd_available ) (struct lpfc_hba*,struct lpfc_sli_ring*) ;TYPE_4__ sli; TYPE_5__ stats; } ;
struct lpfc_pgp {int /*<<< orphan*/  cmdGetInx; int /*<<< orphan*/  rspPutInx; } ;
struct TYPE_14__ {int* ulpWord; } ;
struct TYPE_15__ {int ulpCommand; int ulpStatus; int /*<<< orphan*/  ulpContext; int /*<<< orphan*/  ulpIoTag; int /*<<< orphan*/  un1; TYPE_6__ un; } ;
struct lpfc_iocbq {int iocb_flag; int /*<<< orphan*/  (* iocb_cmpl ) (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ;TYPE_7__ iocb; int /*<<< orphan*/  list; } ;
struct lpfc_hba {int fcp_ring_in_use; int /*<<< orphan*/  hbalock; int /*<<< orphan*/ * CAregaddr; TYPE_2__* host_gp; int /*<<< orphan*/  brd_no; TYPE_1__* pcidev; int /*<<< orphan*/  (* lpfc_rampdown_queue_depth ) (struct lpfc_hba*) ;int /*<<< orphan*/  iocb_rsp_size; int /*<<< orphan*/  last_completion_time; struct lpfc_pgp* port_gp; } ;
typedef  int lpfc_iocb_type ;
struct TYPE_10__ {int /*<<< orphan*/  rspGetInx; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_7__ IOCB_t ;

/* Variables and functions */
 int CA_R0ATT ; 
 int CA_R0RE_RSP ; 
 int CMD_ADAPTER_MSG ; 
 int CMD_IOCB_MASK ; 
 int CMD_XRI_ABORTED_CX ; 
 scalar_t__ HA_R0CE_RSP ; 
 scalar_t__ HA_R0RE_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int IOERR_NO_RESOURCES ; 
 int IOERR_PARAM_MASK ; 
 int IOSTAT_LOCAL_REJECT ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_SLI ; 
#define  LPFC_ABORT_IOCB 130 
 int LPFC_CALL_RING_AVAILABLE ; 
 int LPFC_DRIVER_ABORTED ; 
 int LPFC_MAX_ADPTMSG ; 
#define  LPFC_SOL_IOCB 129 
#define  LPFC_UNSOL_IOCB 128 
 int /*<<< orphan*/  MAX_MSG_DATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 
 TYPE_7__* FUNC4 (struct lpfc_hba*,struct lpfc_sli_ring*) ; 
 int FUNC5 (int) ; 
 struct lpfc_iocbq* FUNC6 (struct lpfc_hba*,struct lpfc_sli_ring*,struct lpfc_iocbq*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_hba*,struct lpfc_sli_ring*,struct lpfc_iocbq*) ; 
 int /*<<< orphan*/  FUNC9 (struct lpfc_hba*,struct lpfc_sli_ring*) ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_hba*,struct lpfc_sli_ring*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC18 (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ; 
 int /*<<< orphan*/  FUNC19 (struct lpfc_hba*,struct lpfc_sli_ring*) ; 
 scalar_t__ FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,int /*<<< orphan*/ *) ; 

int
FUNC22(struct lpfc_hba *phba,
				struct lpfc_sli_ring *pring, uint32_t mask)
{
	struct lpfc_pgp *pgp = &phba->port_gp[pring->ringno];
	IOCB_t *irsp = NULL;
	IOCB_t *entry = NULL;
	struct lpfc_iocbq *cmdiocbq = NULL;
	struct lpfc_iocbq rspiocbq;
	uint32_t status;
	uint32_t portRspPut, portRspMax;
	int rc = 1;
	lpfc_iocb_type type;
	unsigned long iflag;
	uint32_t rsp_cmpl = 0;

	FUNC15(&phba->hbalock, iflag);
	pring->stats.iocb_event++;

	/*
	 * The next available response entry should never exceed the maximum
	 * entries.  If it does, treat it as an adapter hardware error.
	 */
	portRspMax = pring->sli.sli3.numRiocb;
	portRspPut = FUNC2(pgp->rspPutInx);
	if (FUNC20(portRspPut >= portRspMax)) {
		FUNC10(phba, pring);
		FUNC16(&phba->hbalock, iflag);
		return 1;
	}
	if (phba->fcp_ring_in_use) {
		FUNC16(&phba->hbalock, iflag);
		return 1;
	} else
		phba->fcp_ring_in_use = 1;

	FUNC14();
	while (pring->sli.sli3.rspidx != portRspPut) {
		/*
		 * Fetch an entry off the ring and copy it into a local data
		 * structure.  The copy involves a byte-swap since the
		 * network byte order and pci byte orders are different.
		 */
		entry = FUNC4(phba, pring);
		phba->last_completion_time = jiffies;

		if (++pring->sli.sli3.rspidx >= portRspMax)
			pring->sli.sli3.rspidx = 0;

		FUNC7((uint32_t *) entry,
				      (uint32_t *) &rspiocbq.iocb,
				      phba->iocb_rsp_size);
		FUNC0(&(rspiocbq.list));
		irsp = &rspiocbq.iocb;

		type = FUNC5(irsp->ulpCommand & CMD_IOCB_MASK);
		pring->stats.iocb_rsp++;
		rsp_cmpl++;

		if (FUNC20(irsp->ulpStatus)) {
			/*
			 * If resource errors reported from HBA, reduce
			 * queuedepths of the SCSI device.
			 */
			if ((irsp->ulpStatus == IOSTAT_LOCAL_REJECT) &&
			    ((irsp->un.ulpWord[4] & IOERR_PARAM_MASK) ==
			     IOERR_NO_RESOURCES)) {
				FUNC16(&phba->hbalock, iflag);
				phba->lpfc_rampdown_queue_depth(phba);
				FUNC15(&phba->hbalock, iflag);
			}

			/* Rsp ring <ringno> error: IOCB */
			FUNC3(phba, KERN_WARNING, LOG_SLI,
					"0336 Rsp Ring %d error: IOCB Data: "
					"x%x x%x x%x x%x x%x x%x x%x x%x\n",
					pring->ringno,
					irsp->un.ulpWord[0],
					irsp->un.ulpWord[1],
					irsp->un.ulpWord[2],
					irsp->un.ulpWord[3],
					irsp->un.ulpWord[4],
					irsp->un.ulpWord[5],
					*(uint32_t *)&irsp->un1,
					*((uint32_t *)&irsp->un1 + 1));
		}

		switch (type) {
		case LPFC_ABORT_IOCB:
		case LPFC_SOL_IOCB:
			/*
			 * Idle exchange closed via ABTS from port.  No iocb
			 * resources need to be recovered.
			 */
			if (FUNC20(irsp->ulpCommand == CMD_XRI_ABORTED_CX)) {
				FUNC3(phba, KERN_INFO, LOG_SLI,
						"0333 IOCB cmd 0x%x"
						" processed. Skipping"
						" completion\n",
						irsp->ulpCommand);
				break;
			}

			cmdiocbq = FUNC6(phba, pring,
							 &rspiocbq);
			if (FUNC20(!cmdiocbq))
				break;
			if (cmdiocbq->iocb_flag & LPFC_DRIVER_ABORTED)
				cmdiocbq->iocb_flag &= ~LPFC_DRIVER_ABORTED;
			if (cmdiocbq->iocb_cmpl) {
				FUNC16(&phba->hbalock, iflag);
				(cmdiocbq->iocb_cmpl)(phba, cmdiocbq,
						      &rspiocbq);
				FUNC15(&phba->hbalock, iflag);
			}
			break;
		case LPFC_UNSOL_IOCB:
			FUNC16(&phba->hbalock, iflag);
			FUNC8(phba, pring, &rspiocbq);
			FUNC15(&phba->hbalock, iflag);
			break;
		default:
			if (irsp->ulpCommand == CMD_ADAPTER_MSG) {
				char adaptermsg[LPFC_MAX_ADPTMSG];
				FUNC12(adaptermsg, 0, LPFC_MAX_ADPTMSG);
				FUNC11(&adaptermsg[0], (uint8_t *) irsp,
				       MAX_MSG_DATA);
				FUNC1(&((phba->pcidev)->dev),
					 "lpfc%d: %s\n",
					 phba->brd_no, adaptermsg);
			} else {
				/* Unknown IOCB command */
				FUNC3(phba, KERN_ERR, LOG_SLI,
						"0334 Unknown IOCB command "
						"Data: x%x, x%x x%x x%x x%x\n",
						type, irsp->ulpCommand,
						irsp->ulpStatus,
						irsp->ulpIoTag,
						irsp->ulpContext);
			}
			break;
		}

		/*
		 * The response IOCB has been processed.  Update the ring
		 * pointer in SLIM.  If the port response put pointer has not
		 * been updated, sync the pgp->rspPutInx and fetch the new port
		 * response put pointer.
		 */
		FUNC21(pring->sli.sli3.rspidx,
			&phba->host_gp[pring->ringno].rspGetInx);

		if (pring->sli.sli3.rspidx == portRspPut)
			portRspPut = FUNC2(pgp->rspPutInx);
	}

	if ((rsp_cmpl > 0) && (mask & HA_R0RE_REQ)) {
		pring->stats.iocb_rsp_full++;
		status = ((CA_R0ATT | CA_R0RE_RSP) << (pring->ringno * 4));
		FUNC21(status, phba->CAregaddr);
		FUNC13(phba->CAregaddr);
	}
	if ((mask & HA_R0CE_RSP) && (pring->flag & LPFC_CALL_RING_AVAILABLE)) {
		pring->flag &= ~LPFC_CALL_RING_AVAILABLE;
		pring->stats.iocb_cmd_empty++;

		/* Force update of the local copy of cmdGetInx */
		pring->sli.sli3.local_getidx = FUNC2(pgp->cmdGetInx);
		FUNC9(phba, pring);

		if ((pring->lpfc_sli_cmd_available))
			(pring->lpfc_sli_cmd_available) (phba, pring);

	}

	phba->fcp_ring_in_use = 0;
	FUNC16(&phba->hbalock, iflag);
	return rc;
}