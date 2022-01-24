#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct TYPE_3__ {int altBbCredit; scalar_t__ fcphLow; scalar_t__ fcphHigh; } ;
struct serv_parm {TYPE_1__ cmn; } ;
struct lpfc_vport {int fc_flag; int /*<<< orphan*/  fc_sparam; struct lpfc_hba* phba; } ;
struct lpfc_sli {int dummy; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_iocbq {int /*<<< orphan*/  iocb_cmpl; scalar_t__ context2; int /*<<< orphan*/  iocb; } ;
struct TYPE_4__ {int /*<<< orphan*/  elsXmitPLOGI; } ;
struct lpfc_hba {TYPE_2__ fc_stat; struct lpfc_sli sli; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
typedef  int /*<<< orphan*/  IOCB_t ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_CMD_PLOGI ; 
 int FC_FABRIC ; 
 scalar_t__ FC_PH3 ; 
 scalar_t__ FC_PH_4_3 ; 
 int FC_PUBLIC_LOOP ; 
 int IOCB_ERROR ; 
 int /*<<< orphan*/  LPFC_DISC_TRC_ELS_CMD ; 
 int /*<<< orphan*/  LPFC_ELS_RING ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  lpfc_cmpl_els_plogi ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,struct lpfc_iocbq*) ; 
 struct lpfc_nodelist* FUNC3 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 struct lpfc_iocbq* FUNC4 (struct lpfc_vport*,int,int,int /*<<< orphan*/ ,struct lpfc_nodelist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct lpfc_hba*,int /*<<< orphan*/ ,struct lpfc_iocbq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int
FUNC7(struct lpfc_vport *vport, uint32_t did, uint8_t retry)
{
	struct lpfc_hba  *phba = vport->phba;
	struct serv_parm *sp;
	IOCB_t *icmd;
	struct lpfc_nodelist *ndlp;
	struct lpfc_iocbq *elsiocb;
	struct lpfc_sli *psli;
	uint8_t *pcmd;
	uint16_t cmdsize;
	int ret;

	psli = &phba->sli;

	ndlp = FUNC3(vport, did);
	if (ndlp && !FUNC0(ndlp))
		ndlp = NULL;

	/* If ndlp is not NULL, we will bump the reference count on it */
	cmdsize = (sizeof(uint32_t) + sizeof(struct serv_parm));
	elsiocb = FUNC4(vport, 1, cmdsize, retry, ndlp, did,
				     ELS_CMD_PLOGI);
	if (!elsiocb)
		return 1;

	icmd = &elsiocb->iocb;
	pcmd = (uint8_t *) (((struct lpfc_dmabuf *) elsiocb->context2)->virt);

	/* For PLOGI request, remainder of payload is service parameters */
	*((uint32_t *) (pcmd)) = ELS_CMD_PLOGI;
	pcmd += sizeof(uint32_t);
	FUNC6(pcmd, &vport->fc_sparam, sizeof(struct serv_parm));
	sp = (struct serv_parm *) pcmd;

	/*
	 * If we are a N-port connected to a Fabric, fix-up paramm's so logins
	 * to device on remote loops work.
	 */
	if ((vport->fc_flag & FC_FABRIC) && !(vport->fc_flag & FC_PUBLIC_LOOP))
		sp->cmn.altBbCredit = 1;

	if (sp->cmn.fcphLow < FC_PH_4_3)
		sp->cmn.fcphLow = FC_PH_4_3;

	if (sp->cmn.fcphHigh < FC_PH3)
		sp->cmn.fcphHigh = FC_PH3;

	FUNC1(vport, LPFC_DISC_TRC_ELS_CMD,
		"Issue PLOGI:     did:x%x",
		did, 0, 0);

	phba->fc_stat.elsXmitPLOGI++;
	elsiocb->iocb_cmpl = lpfc_cmpl_els_plogi;
	ret = FUNC5(phba, LPFC_ELS_RING, elsiocb, 0);

	if (ret == IOCB_ERROR) {
		FUNC2(phba, elsiocb);
		return 1;
	}
	return 0;
}