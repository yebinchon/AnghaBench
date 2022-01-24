#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lpfc_vport {scalar_t__ port_state; int /*<<< orphan*/  fc_flag; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int /*<<< orphan*/  nlp_type; } ;
struct lpfc_hba {struct lpfc_vport* pport; int /*<<< orphan*/  nlp_mem_pool; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_VPORT_CVL_RCVD ; 
 int /*<<< orphan*/  Fabric_DID ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ LPFC_FDISC ; 
 scalar_t__ LPFC_FLOGI ; 
 scalar_t__ LPFC_VPORT_FAILED ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  NLP_FABRIC ; 
 int /*<<< orphan*/  NLP_STE_UNUSED_NODE ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*) ; 
 struct lpfc_nodelist* FUNC2 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*,struct lpfc_nodelist*) ; 
 struct lpfc_nodelist* FUNC4 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC7 (struct lpfc_vport*) ; 
 struct lpfc_nodelist* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct lpfc_nodelist *
FUNC11(struct lpfc_vport *vport)
{
	struct lpfc_nodelist *ndlp;
	struct Scsi_Host *shost;
	struct lpfc_hba *phba;

	if (!vport)
		return NULL;
	phba = vport->phba;
	if (!phba)
		return NULL;
	ndlp = FUNC4(vport, Fabric_DID);
	if (!ndlp) {
		/* Cannot find existing Fabric ndlp, so allocate a new one */
		ndlp = FUNC8(phba->nlp_mem_pool, GFP_KERNEL);
		if (!ndlp)
			return 0;
		FUNC6(vport, ndlp, Fabric_DID);
		/* Set the node type */
		ndlp->nlp_type |= NLP_FABRIC;
		/* Put ndlp onto node list */
		FUNC3(vport, ndlp);
	} else if (!FUNC0(ndlp)) {
		/* re-setup ndlp without removing from node list */
		ndlp = FUNC2(vport, ndlp, NLP_STE_UNUSED_NODE);
		if (!ndlp)
			return 0;
	}
	if ((phba->pport->port_state < LPFC_FLOGI) &&
		(phba->pport->port_state != LPFC_VPORT_FAILED))
		return NULL;
	/* If virtual link is not yet instantiated ignore CVL */
	if ((vport != phba->pport) && (vport->port_state < LPFC_FDISC)
		&& (vport->port_state != LPFC_VPORT_FAILED))
		return NULL;
	shost = FUNC7(vport);
	if (!shost)
		return NULL;
	FUNC5(vport);
	FUNC1(vport);
	FUNC9(shost->host_lock);
	vport->fc_flag |= FC_VPORT_CVL_RCVD;
	FUNC10(shost->host_lock);

	return ndlp;
}