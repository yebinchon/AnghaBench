#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  void* uint16_t ;
struct lpfc_nodelist {int /*<<< orphan*/  nlp_rpi; int /*<<< orphan*/  nlp_state; int /*<<< orphan*/  nlp_flag; int /*<<< orphan*/  nlp_DID; int /*<<< orphan*/  vport; } ;
struct TYPE_13__ {void* ox_id; } ;
struct TYPE_14__ {TYPE_2__ rcvsli3; } ;
struct TYPE_20__ {void* ulpContext; TYPE_3__ unsli3; } ;
struct lpfc_iocbq {int /*<<< orphan*/  iocb_cmpl; TYPE_9__ iocb; int /*<<< orphan*/  iotag; scalar_t__ context2; } ;
struct TYPE_17__ {int /*<<< orphan*/  elsXmitACC; } ;
struct lpfc_hba {TYPE_6__ fc_stat; int /*<<< orphan*/  mbox_mem_pool; int /*<<< orphan*/  pport; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct RLS_RSP {void* crcCnt; void* invalidXmitWord; void* primSeqErrCnt; void* lossSignalCnt; void* lossSyncCnt; void* linkFailureCnt; } ;
struct TYPE_15__ {int /*<<< orphan*/  crcCnt; int /*<<< orphan*/  invalidXmitWord; int /*<<< orphan*/  primSeqErrCnt; int /*<<< orphan*/  lossSignalCnt; int /*<<< orphan*/  lossSyncCnt; int /*<<< orphan*/  linkFailureCnt; } ;
struct TYPE_16__ {TYPE_4__ varRdLnk; } ;
struct TYPE_18__ {TYPE_5__ un; scalar_t__ mbxStatus; } ;
struct TYPE_12__ {TYPE_7__ mb; } ;
struct TYPE_19__ {int /*<<< orphan*/ * context2; int /*<<< orphan*/ * context1; TYPE_1__ u; } ;
typedef  TYPE_7__ MAILBOX_t ;
typedef  TYPE_8__ LPFC_MBOXQ_t ;
typedef  TYPE_9__ IOCB_t ;

/* Variables and functions */
 int ELS_CMD_ACC ; 
 scalar_t__ IOCB_ERROR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_ELS ; 
 int /*<<< orphan*/  LPFC_ELS_RING ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_cmpl_els_rsp ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,struct lpfc_iocbq*) ; 
 int /*<<< orphan*/  lpfc_max_els_tries ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_nodelist*) ; 
 struct lpfc_iocbq* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct lpfc_nodelist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct lpfc_hba*,int /*<<< orphan*/ ,struct lpfc_iocbq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
	MAILBOX_t *mb;
	IOCB_t *icmd;
	struct RLS_RSP *rls_rsp;
	uint8_t *pcmd;
	struct lpfc_iocbq *elsiocb;
	struct lpfc_nodelist *ndlp;
	uint16_t oxid;
	uint16_t rxid;
	uint32_t cmdsize;

	mb = &pmb->u.mb;

	ndlp = (struct lpfc_nodelist *) pmb->context2;
	rxid = (uint16_t) ((unsigned long)(pmb->context1) & 0xffff);
	oxid = (uint16_t) (((unsigned long)(pmb->context1) >> 16) & 0xffff);
	pmb->context1 = NULL;
	pmb->context2 = NULL;

	if (mb->mbxStatus) {
		FUNC6(pmb, phba->mbox_mem_pool);
		return;
	}

	cmdsize = sizeof(struct RLS_RSP) + sizeof(uint32_t);
	elsiocb = FUNC3(phba->pport, 0, cmdsize,
				     lpfc_max_els_tries, ndlp,
				     ndlp->nlp_DID, ELS_CMD_ACC);

	/* Decrement the ndlp reference count from previous mbox command */
	FUNC2(ndlp);

	if (!elsiocb) {
		FUNC6(pmb, phba->mbox_mem_pool);
		return;
	}

	icmd = &elsiocb->iocb;
	icmd->ulpContext = rxid;
	icmd->unsli3.rcvsli3.ox_id = oxid;

	pcmd = (uint8_t *) (((struct lpfc_dmabuf *) elsiocb->context2)->virt);
	*((uint32_t *) (pcmd)) = ELS_CMD_ACC;
	pcmd += sizeof(uint32_t); /* Skip past command */
	rls_rsp = (struct RLS_RSP *)pcmd;

	rls_rsp->linkFailureCnt = FUNC0(mb->un.varRdLnk.linkFailureCnt);
	rls_rsp->lossSyncCnt = FUNC0(mb->un.varRdLnk.lossSyncCnt);
	rls_rsp->lossSignalCnt = FUNC0(mb->un.varRdLnk.lossSignalCnt);
	rls_rsp->primSeqErrCnt = FUNC0(mb->un.varRdLnk.primSeqErrCnt);
	rls_rsp->invalidXmitWord = FUNC0(mb->un.varRdLnk.invalidXmitWord);
	rls_rsp->crcCnt = FUNC0(mb->un.varRdLnk.crcCnt);
	FUNC6(pmb, phba->mbox_mem_pool);
	/* Xmit ELS RLS ACC response tag <ulpIoTag> */
	FUNC4(ndlp->vport, KERN_INFO, LOG_ELS,
			 "2874 Xmit ELS RLS ACC response tag x%x xri x%x, "
			 "did x%x, nlp_flag x%x, nlp_state x%x, rpi x%x\n",
			 elsiocb->iotag, elsiocb->iocb.ulpContext,
			 ndlp->nlp_DID, ndlp->nlp_flag, ndlp->nlp_state,
			 ndlp->nlp_rpi);
	elsiocb->iocb_cmpl = lpfc_cmpl_els_rsp;
	phba->fc_stat.elsXmitACC++;
	if (FUNC5(phba, LPFC_ELS_RING, elsiocb, 0) == IOCB_ERROR)
		FUNC1(phba, elsiocb);
}