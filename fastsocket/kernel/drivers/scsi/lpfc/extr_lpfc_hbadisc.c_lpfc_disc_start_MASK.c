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
typedef  int uint32_t ;
struct lpfc_vport {scalar_t__ port_state; scalar_t__ fc_prevDID; scalar_t__ fc_myDID; int fc_flag; scalar_t__ port_type; scalar_t__ fc_rscn_id_cnt; scalar_t__ num_disc_nodes; scalar_t__ fc_npr_cnt; int /*<<< orphan*/  fc_adisc_cnt; int /*<<< orphan*/  fc_plogi_cnt; struct lpfc_hba* phba; } ;
struct lpfc_hba {scalar_t__ link_state; int sli3_options; scalar_t__ sli_rev; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int FC_ABORT_DISCOVERY ; 
 int FC_NDISC_ACTIVE ; 
 int FC_PT2PT ; 
 int FC_RSCN_DISCOVERY ; 
 int FC_RSCN_MODE ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_DISCOVERY ; 
 int /*<<< orphan*/  LOG_SLI ; 
 scalar_t__ LPFC_CLEAR_LA ; 
 scalar_t__ LPFC_DISC_AUTH ; 
 scalar_t__ LPFC_PHYSICAL_PORT ; 
 int LPFC_SLI3_NPIV_ENABLED ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 scalar_t__ LPFC_VPORT_READY ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*) ; 
 int FUNC1 (struct lpfc_vport*) ; 
 int FUNC2 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*,struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*,struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_vport*) ; 
 struct Scsi_Host* FUNC9 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void
FUNC12(struct lpfc_vport *vport)
{
	struct Scsi_Host *shost = FUNC9(vport);
	struct lpfc_hba  *phba = vport->phba;
	uint32_t num_sent;
	uint32_t clear_la_pending;
	int did_changed;

	if (!FUNC4(phba)) {
		FUNC7(vport, KERN_INFO, LOG_SLI,
				 "3315 Link is not up %x\n",
				 phba->link_state);
		return;
	}

	if (phba->link_state == LPFC_CLEAR_LA)
		clear_la_pending = 1;
	else
		clear_la_pending = 0;

	if (vport->port_state < LPFC_VPORT_READY)
		vport->port_state = LPFC_DISC_AUTH;

	FUNC8(vport);

	if (vport->fc_prevDID == vport->fc_myDID)
		did_changed = 0;
	else
		did_changed = 1;

	vport->fc_prevDID = vport->fc_myDID;
	vport->num_disc_nodes = 0;

	/* Start Discovery state <hba_state> */
	FUNC7(vport, KERN_INFO, LOG_DISCOVERY,
			 "0202 Start Discovery hba state x%x "
			 "Data: x%x x%x x%x\n",
			 vport->port_state, vport->fc_flag, vport->fc_plogi_cnt,
			 vport->fc_adisc_cnt);

	/* First do ADISCs - if any */
	num_sent = FUNC1(vport);

	if (num_sent)
		return;

	/* Register the VPI for SLI3, NPIV only. */
	if ((phba->sli3_options & LPFC_SLI3_NPIV_ENABLED) &&
	    !(vport->fc_flag & FC_PT2PT) &&
	    !(vport->fc_flag & FC_RSCN_MODE) &&
	    (phba->sli_rev < LPFC_SLI_REV4)) {
		if (vport->port_type == LPFC_PHYSICAL_PORT)
			FUNC5(phba, vport);
		FUNC6(phba, vport);
		return;
	}

	/*
	 * For SLI2, we need to set port_state to READY and continue
	 * discovery.
	 */
	if (vport->port_state < LPFC_VPORT_READY && !clear_la_pending) {
		/* If we get here, there is nothing to ADISC */
		if (vport->port_type == LPFC_PHYSICAL_PORT)
			FUNC5(phba, vport);

		if (!(vport->fc_flag & FC_ABORT_DISCOVERY)) {
			vport->num_disc_nodes = 0;
			/* go thru NPR nodes and issue ELS PLOGIs */
			if (vport->fc_npr_cnt)
				FUNC2(vport);

			if (!vport->num_disc_nodes) {
				FUNC10(shost->host_lock);
				vport->fc_flag &= ~FC_NDISC_ACTIVE;
				FUNC11(shost->host_lock);
				FUNC0(vport);
			}
		}
		vport->port_state = LPFC_VPORT_READY;
	} else {
		/* Next do PLOGIs - if any */
		num_sent = FUNC2(vport);

		if (num_sent)
			return;

		if (vport->fc_flag & FC_RSCN_MODE) {
			/* Check to see if more RSCNs came in while we
			 * were processing this one.
			 */
			if ((vport->fc_rscn_id_cnt == 0) &&
			    (!(vport->fc_flag & FC_RSCN_DISCOVERY))) {
				FUNC10(shost->host_lock);
				vport->fc_flag &= ~FC_RSCN_MODE;
				FUNC11(shost->host_lock);
				FUNC0(vport);
			} else
				FUNC3(vport);
		}
	}
	return;
}