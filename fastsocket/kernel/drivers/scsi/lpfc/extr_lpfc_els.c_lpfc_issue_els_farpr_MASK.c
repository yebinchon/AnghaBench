#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct lpfc_vport {int /*<<< orphan*/  fc_nodename; int /*<<< orphan*/  fc_portname; int /*<<< orphan*/  fc_myDID; struct lpfc_hba* phba; } ;
struct lpfc_sli {int dummy; } ;
struct lpfc_nodelist {int /*<<< orphan*/  nlp_DID; int /*<<< orphan*/  nlp_nodename; int /*<<< orphan*/  nlp_portname; } ;
struct lpfc_name {int dummy; } ;
struct lpfc_iocbq {int /*<<< orphan*/  iocb_cmpl; scalar_t__ context2; int /*<<< orphan*/  iocb; } ;
struct TYPE_4__ {int /*<<< orphan*/  elsXmitFARPR; } ;
struct lpfc_hba {TYPE_1__ fc_stat; int /*<<< orphan*/  nlp_mem_pool; struct lpfc_sli sli; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct TYPE_5__ {int Mflags; int /*<<< orphan*/  OnodeName; int /*<<< orphan*/  OportName; int /*<<< orphan*/  RnodeName; int /*<<< orphan*/  RportName; scalar_t__ Rflags; } ;
typedef  int /*<<< orphan*/  IOCB_t ;
typedef  TYPE_2__ FARP ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_CMD_FARPR ; 
 int /*<<< orphan*/  ELS_CMD_RNID ; 
 int FARP_MATCH_NODE ; 
 int FARP_MATCH_PORT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IOCB_ERROR ; 
 int /*<<< orphan*/  LPFC_DISC_TRC_ELS_CMD ; 
 int /*<<< orphan*/  LPFC_ELS_RING ; 
 scalar_t__ FUNC0 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  NLP_STE_UNUSED_NODE ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_cmpl_els_cmd ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,struct lpfc_iocbq*) ; 
 struct lpfc_nodelist* FUNC4 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_vport*,struct lpfc_nodelist*) ; 
 struct lpfc_nodelist* FUNC6 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_nodelist*) ; 
 struct lpfc_iocbq* FUNC9 (struct lpfc_vport*,int,int,int /*<<< orphan*/ ,struct lpfc_nodelist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct lpfc_hba*,int /*<<< orphan*/ ,struct lpfc_iocbq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct lpfc_nodelist* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC14(struct lpfc_vport *vport, uint32_t nportid, uint8_t retry)
{
	struct lpfc_hba  *phba = vport->phba;
	IOCB_t *icmd;
	struct lpfc_iocbq *elsiocb;
	struct lpfc_sli *psli;
	FARP *fp;
	uint8_t *pcmd;
	uint32_t *lp;
	uint16_t cmdsize;
	struct lpfc_nodelist *ondlp;
	struct lpfc_nodelist *ndlp;

	psli = &phba->sli;
	cmdsize = (sizeof(uint32_t) + sizeof(FARP));

	ndlp = FUNC6(vport, nportid);
	if (!ndlp) {
		ndlp = FUNC12(phba->nlp_mem_pool, GFP_KERNEL);
		if (!ndlp)
			return 1;
		FUNC7(vport, ndlp, nportid);
		FUNC5(vport, ndlp);
	} else if (!FUNC0(ndlp)) {
		ndlp = FUNC4(vport, ndlp, NLP_STE_UNUSED_NODE);
		if (!ndlp)
			return 1;
	}

	elsiocb = FUNC9(vport, 1, cmdsize, retry, ndlp,
				     ndlp->nlp_DID, ELS_CMD_RNID);
	if (!elsiocb) {
		/* This will trigger the release of the node just
		 * allocated
		 */
		FUNC8(ndlp);
		return 1;
	}

	icmd = &elsiocb->iocb;
	pcmd = (uint8_t *) (((struct lpfc_dmabuf *) elsiocb->context2)->virt);

	*((uint32_t *) (pcmd)) = ELS_CMD_FARPR;
	pcmd += sizeof(uint32_t);

	/* Fill in FARPR payload */
	fp = (FARP *) (pcmd);
	FUNC13(fp, 0, sizeof(FARP));
	lp = (uint32_t *) pcmd;
	*lp++ = FUNC1(nportid);
	*lp++ = FUNC1(vport->fc_myDID);
	fp->Rflags = 0;
	fp->Mflags = (FARP_MATCH_PORT | FARP_MATCH_NODE);

	FUNC11(&fp->RportName, &vport->fc_portname, sizeof(struct lpfc_name));
	FUNC11(&fp->RnodeName, &vport->fc_nodename, sizeof(struct lpfc_name));
	ondlp = FUNC6(vport, nportid);
	if (ondlp && FUNC0(ondlp)) {
		FUNC11(&fp->OportName, &ondlp->nlp_portname,
		       sizeof(struct lpfc_name));
		FUNC11(&fp->OnodeName, &ondlp->nlp_nodename,
		       sizeof(struct lpfc_name));
	}

	FUNC2(vport, LPFC_DISC_TRC_ELS_CMD,
		"Issue FARPR:     did:x%x",
		ndlp->nlp_DID, 0, 0);

	phba->fc_stat.elsXmitFARPR++;
	elsiocb->iocb_cmpl = lpfc_cmpl_els_cmd;
	if (FUNC10(phba, LPFC_ELS_RING, elsiocb, 0) ==
	    IOCB_ERROR) {
		/* The additional lpfc_nlp_put will cause the following
		 * lpfc_els_free_iocb routine to trigger the release of
		 * the node.
		 */
		FUNC8(ndlp);
		FUNC3(phba, elsiocb);
		return 1;
	}
	/* This will cause the callback-function lpfc_cmpl_els_cmd to
	 * trigger the release of the node.
	 */
	FUNC8(ndlp);
	return 0;
}