#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ uint16_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_sli {int dummy; } ;
struct lpfc_nodelist {int /*<<< orphan*/  nlp_flag; int /*<<< orphan*/  nlp_DID; } ;
struct TYPE_5__ {scalar_t__ acc_len; int /*<<< orphan*/  ox_id; } ;
struct TYPE_6__ {TYPE_1__ rcvsli3; } ;
struct TYPE_7__ {int /*<<< orphan*/  ulpContext; TYPE_2__ unsli3; } ;
struct lpfc_iocbq {int /*<<< orphan*/  iocb_cmpl; scalar_t__ context2; TYPE_3__ iocb; int /*<<< orphan*/  iotag; int /*<<< orphan*/  retry; } ;
struct TYPE_8__ {int /*<<< orphan*/  elsXmitACC; } ;
struct lpfc_hba {TYPE_4__ fc_stat; struct lpfc_sli sli; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_CMD_ACC ; 
 int IOCB_ERROR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_ELS ; 
 scalar_t__ LPFC_BPL_SIZE ; 
 int /*<<< orphan*/  LPFC_DISC_TRC_ELS_RSP ; 
 int /*<<< orphan*/  LPFC_ELS_RING ; 
 int /*<<< orphan*/  lpfc_cmpl_els_rsp ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,struct lpfc_iocbq*) ; 
 struct lpfc_iocbq* FUNC2 (struct lpfc_vport*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct lpfc_nodelist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ ,struct lpfc_iocbq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct lpfc_vport *vport, uint8_t *data,
		      struct lpfc_iocbq *oldiocb, struct lpfc_nodelist *ndlp)
{
	struct lpfc_hba  *phba = vport->phba;
	struct lpfc_iocbq *elsiocb;
	struct lpfc_sli *psli;
	uint8_t *pcmd;
	uint16_t cmdsize;
	int rc;

	psli = &phba->sli;
	cmdsize = oldiocb->iocb.unsli3.rcvsli3.acc_len;

	/* The accumulated length can exceed the BPL_SIZE.  For
	 * now, use this as the limit
	 */
	if (cmdsize > LPFC_BPL_SIZE)
		cmdsize = LPFC_BPL_SIZE;
	elsiocb = FUNC2(vport, 0, cmdsize, oldiocb->retry, ndlp,
				     ndlp->nlp_DID, ELS_CMD_ACC);
	if (!elsiocb)
		return 1;

	elsiocb->iocb.ulpContext = oldiocb->iocb.ulpContext;  /* Xri / rx_id */
	elsiocb->iocb.unsli3.rcvsli3.ox_id = oldiocb->iocb.unsli3.rcvsli3.ox_id;

	/* Xmit ECHO ACC response tag <ulpIoTag> */
	FUNC3(vport, KERN_INFO, LOG_ELS,
			 "2876 Xmit ECHO ACC response tag x%x xri x%x\n",
			 elsiocb->iotag, elsiocb->iocb.ulpContext);
	pcmd = (uint8_t *) (((struct lpfc_dmabuf *) elsiocb->context2)->virt);
	*((uint32_t *) (pcmd)) = ELS_CMD_ACC;
	pcmd += sizeof(uint32_t);
	FUNC5(pcmd, data, cmdsize - sizeof(uint32_t));

	FUNC0(vport, LPFC_DISC_TRC_ELS_RSP,
		"Issue ACC ECHO:  did:x%x flg:x%x",
		ndlp->nlp_DID, ndlp->nlp_flag, 0);

	phba->fc_stat.elsXmitACC++;
	elsiocb->iocb_cmpl = lpfc_cmpl_els_rsp;

	rc = FUNC4(phba, LPFC_ELS_RING, elsiocb, 0);
	if (rc == IOCB_ERROR) {
		FUNC1(phba, elsiocb);
		return 1;
	}
	return 0;
}