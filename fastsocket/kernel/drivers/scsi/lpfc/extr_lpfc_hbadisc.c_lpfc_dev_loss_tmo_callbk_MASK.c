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
struct lpfc_work_evt {int /*<<< orphan*/  evt_listp; int /*<<< orphan*/  evt; scalar_t__ evt_arg1; } ;
struct lpfc_vport {int load_flag; struct lpfc_hba* phba; } ;
struct lpfc_rport_data {struct lpfc_nodelist* pnode; } ;
struct TYPE_3__ {int /*<<< orphan*/  wwn; } ;
struct TYPE_4__ {TYPE_1__ u; } ;
struct lpfc_nodelist {scalar_t__ nlp_state; int nlp_type; struct lpfc_work_evt dev_loss_evt; TYPE_2__ nlp_portname; int /*<<< orphan*/ * rport; int /*<<< orphan*/  nlp_flag; int /*<<< orphan*/  nlp_DID; struct lpfc_vport* vport; int /*<<< orphan*/  nlp_sid; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; int /*<<< orphan*/  work_list; } ;
struct fc_rport {scalar_t__ port_name; int /*<<< orphan*/  dev; struct lpfc_rport_data* dd_data; } ;

/* Variables and functions */
 int FC_UNLOADING ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_NODE ; 
 int /*<<< orphan*/  LPFC_DISC_TRC_RPORT ; 
 int /*<<< orphan*/  LPFC_EVT_DEV_LOSS ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_nodelist*) ; 
 int NLP_FABRIC ; 
 scalar_t__ NLP_STE_MAPPED_NODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

void
FUNC12(struct fc_rport *rport)
{
	struct lpfc_rport_data *rdata;
	struct lpfc_nodelist * ndlp;
	struct lpfc_vport *vport;
	struct lpfc_hba   *phba;
	struct lpfc_work_evt *evtp;
	int  put_node;
	int  put_rport;

	rdata = rport->dd_data;
	ndlp = rdata->pnode;
	if (!ndlp || !FUNC0(ndlp))
		return;

	vport = ndlp->vport;
	phba  = vport->phba;

	FUNC3(vport, LPFC_DISC_TRC_RPORT,
		"rport devlosscb: sid:x%x did:x%x flg:x%x",
		ndlp->nlp_sid, ndlp->nlp_DID, ndlp->nlp_flag);

	FUNC6(ndlp->vport, KERN_INFO, LOG_NODE,
			 "3181 dev_loss_callbk x%06x, rport %p flg x%x\n",
			 ndlp->nlp_DID, ndlp->rport, ndlp->nlp_flag);

	/* Don't defer this if we are in the process of deleting the vport
	 * or unloading the driver. The unload will cleanup the node
	 * appropriately we just need to cleanup the ndlp rport info here.
	 */
	if (vport->load_flag & FC_UNLOADING) {
		put_node = rdata->pnode != NULL;
		put_rport = ndlp->rport != NULL;
		rdata->pnode = NULL;
		ndlp->rport = NULL;
		if (put_node)
			FUNC5(ndlp);
		if (put_rport)
			FUNC8(&rport->dev);
		return;
	}

	if (ndlp->nlp_state == NLP_STE_MAPPED_NODE)
		return;

	if (ndlp->nlp_type & NLP_FABRIC) {

		/* If the WWPN of the rport and ndlp don't match, ignore it */
		if (rport->port_name != FUNC11(ndlp->nlp_portname.u.wwn)) {
			FUNC8(&rport->dev);
			return;
		}
	}

	evtp = &ndlp->dev_loss_evt;

	if (!FUNC2(&evtp->evt_listp))
		return;

	evtp->evt_arg1  = FUNC4(ndlp);

	FUNC9(&phba->hbalock);
	/* We need to hold the node by incrementing the reference
	 * count until this queued work is done
	 */
	if (evtp->evt_arg1) {
		evtp->evt = LPFC_EVT_DEV_LOSS;
		FUNC1(&evtp->evt_listp, &phba->work_list);
		FUNC7(phba);
	}
	FUNC10(&phba->hbalock);

	return;
}