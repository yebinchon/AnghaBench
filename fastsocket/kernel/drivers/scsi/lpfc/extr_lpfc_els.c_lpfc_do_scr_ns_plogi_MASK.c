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
struct lpfc_vport {int fc_flag; scalar_t__ cfg_fdmi_on; int /*<<< orphan*/  delayed_disc_tmo; } ;
struct lpfc_nodelist {int /*<<< orphan*/  nlp_DID; int /*<<< orphan*/  nlp_type; } ;
struct lpfc_hba {int fc_ratov; scalar_t__ fc_topology; int /*<<< orphan*/  nlp_mem_pool; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int FC_DISC_DELAYED ; 
 int /*<<< orphan*/  FC_VPORT_FAILED ; 
 int /*<<< orphan*/  FDMI_DID ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_DISCOVERY ; 
 int /*<<< orphan*/  LOG_ELS ; 
 scalar_t__ LPFC_TOPOLOGY_LOOP ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  NLP_FABRIC ; 
 int /*<<< orphan*/  NLP_STE_NPR_NODE ; 
 int /*<<< orphan*/  NLP_STE_PLOGI_ISSUE ; 
 int /*<<< orphan*/  NLP_STE_UNUSED_NODE ; 
 int /*<<< orphan*/  NameServer_DID ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*) ; 
 struct lpfc_nodelist* FUNC2 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 struct lpfc_nodelist* FUNC3 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct Scsi_Host* FUNC9 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 struct lpfc_nodelist* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

void
FUNC16(struct lpfc_hba *phba, struct lpfc_vport *vport)
{
	struct lpfc_nodelist *ndlp, *ndlp_fdmi;
	struct Scsi_Host *shost = FUNC9(vport);

	/*
	 * If lpfc_delay_discovery parameter is set and the clean address
	 * bit is cleared and fc fabric parameters chenged, delay FC NPort
	 * discovery.
	 */
	FUNC14(shost->host_lock);
	if (vport->fc_flag & FC_DISC_DELAYED) {
		FUNC15(shost->host_lock);
		FUNC7(phba, KERN_ERR, LOG_DISCOVERY,
				"3334 Delay fc port discovery for %d seconds\n",
				phba->fc_ratov);
		FUNC12(&vport->delayed_disc_tmo,
			jiffies + FUNC13(1000 * phba->fc_ratov));
		return;
	}
	FUNC15(shost->host_lock);

	ndlp = FUNC3(vport, NameServer_DID);
	if (!ndlp) {
		ndlp = FUNC11(phba->nlp_mem_pool, GFP_KERNEL);
		if (!ndlp) {
			if (phba->fc_topology == LPFC_TOPOLOGY_LOOP) {
				FUNC1(vport);
				return;
			}
			FUNC10(vport, FC_VPORT_FAILED);
			FUNC8(vport, KERN_ERR, LOG_ELS,
					 "0251 NameServer login: no memory\n");
			return;
		}
		FUNC5(vport, ndlp, NameServer_DID);
	} else if (!FUNC0(ndlp)) {
		ndlp = FUNC2(vport, ndlp, NLP_STE_UNUSED_NODE);
		if (!ndlp) {
			if (phba->fc_topology == LPFC_TOPOLOGY_LOOP) {
				FUNC1(vport);
				return;
			}
			FUNC10(vport, FC_VPORT_FAILED);
			FUNC8(vport, KERN_ERR, LOG_ELS,
					"0348 NameServer login: node freed\n");
			return;
		}
	}
	ndlp->nlp_type |= NLP_FABRIC;

	FUNC6(vport, ndlp, NLP_STE_PLOGI_ISSUE);

	if (FUNC4(vport, ndlp->nlp_DID, 0)) {
		FUNC10(vport, FC_VPORT_FAILED);
		FUNC8(vport, KERN_ERR, LOG_ELS,
				 "0252 Cannot issue NameServer login\n");
		return;
	}

	if (vport->cfg_fdmi_on) {
		/* If this is the first time, allocate an ndlp and initialize
		 * it. Otherwise, make sure the node is enabled and then do the
		 * login.
		 */
		ndlp_fdmi = FUNC3(vport, FDMI_DID);
		if (!ndlp_fdmi) {
			ndlp_fdmi = FUNC11(phba->nlp_mem_pool,
						  GFP_KERNEL);
			if (ndlp_fdmi) {
				FUNC5(vport, ndlp_fdmi, FDMI_DID);
				ndlp_fdmi->nlp_type |= NLP_FABRIC;
			} else
				return;
		}
		if (!FUNC0(ndlp_fdmi))
			ndlp_fdmi = FUNC2(vport,
						     ndlp_fdmi,
						     NLP_STE_NPR_NODE);

		if (ndlp_fdmi) {
			FUNC6(vport, ndlp_fdmi,
					   NLP_STE_PLOGI_ISSUE);
			FUNC4(vport, ndlp_fdmi->nlp_DID, 0);
		}
	}
}