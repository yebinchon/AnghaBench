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
struct lpfc_vport {int fc_flag; scalar_t__ port_state; scalar_t__ port_type; scalar_t__ num_disc_nodes; scalar_t__ fc_npr_cnt; struct lpfc_hba* phba; } ;
struct lpfc_hba {int sli3_options; scalar_t__ sli_rev; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int FC_ABORT_DISCOVERY ; 
 int FC_NDISC_ACTIVE ; 
 int FC_RSCN_MODE ; 
 scalar_t__ LPFC_PHYSICAL_PORT ; 
 int LPFC_SLI3_NPIV_ENABLED ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 scalar_t__ LPFC_VPORT_READY ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_vport*) ; 
 struct Scsi_Host* FUNC6 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct lpfc_vport *vport)
{
	struct Scsi_Host   *shost = FUNC6(vport);
	struct lpfc_hba   *phba = vport->phba;

	/*
	 * For NPIV, cmpl_reg_vpi will set port_state to READY,
	 * and continue discovery.
	 */
	if ((phba->sli3_options & LPFC_SLI3_NPIV_ENABLED) &&
	    !(vport->fc_flag & FC_RSCN_MODE) &&
	    (phba->sli_rev < LPFC_SLI_REV4)) {
		FUNC4(phba, vport);
		return;
	}
	/*
	* For SLI2, we need to set port_state to READY
	* and continue discovery.
	*/
	if (vport->port_state < LPFC_VPORT_READY) {
		/* If we get here, there is nothing to ADISC */
		if (vport->port_type == LPFC_PHYSICAL_PORT)
			FUNC3(phba, vport);
		if (!(vport->fc_flag & FC_ABORT_DISCOVERY)) {
			vport->num_disc_nodes = 0;
			/* go thru NPR list, issue ELS PLOGIs */
			if (vport->fc_npr_cnt)
				FUNC1(vport);
			if (!vport->num_disc_nodes) {
				FUNC7(shost->host_lock);
				vport->fc_flag &= ~FC_NDISC_ACTIVE;
				FUNC8(shost->host_lock);
				FUNC0(vport);
				FUNC2(vport);
			}
		}
		vport->port_state = LPFC_VPORT_READY;
	} else
		FUNC5(vport);
}