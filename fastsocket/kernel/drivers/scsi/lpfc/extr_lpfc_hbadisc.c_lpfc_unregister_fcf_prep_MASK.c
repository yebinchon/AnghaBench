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
struct lpfc_vport {int /*<<< orphan*/  vpi_state; int /*<<< orphan*/  fc_flag; int /*<<< orphan*/  port_state; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_hba {int sli3_options; int max_vports; scalar_t__ sli_rev; struct lpfc_vport* pport; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_VPORT_NEEDS_INIT_VPI ; 
 int /*<<< orphan*/  Fabric_DID ; 
 int LPFC_SLI3_NPIV_ENABLED ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 int /*<<< orphan*/  LPFC_VPI_REGISTERED ; 
 int /*<<< orphan*/  LPFC_VPORT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*) ; 
 struct lpfc_vport** FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,struct lpfc_vport**) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*) ; 
 scalar_t__ FUNC5 (struct lpfc_hba*) ; 
 struct lpfc_nodelist* FUNC6 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_vport*) ; 
 struct Scsi_Host* FUNC9 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC11 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

int
FUNC14(struct lpfc_hba *phba)
{
	struct lpfc_vport **vports;
	struct lpfc_nodelist *ndlp;
	struct Scsi_Host *shost;
	int i = 0, rc;

	/* Unregister RPIs */
	if (FUNC5(phba))
		FUNC11(phba);

	/* At this point, all discovery is aborted */
	phba->pport->port_state = LPFC_VPORT_UNKNOWN;

	/* Unregister VPIs */
	vports = FUNC2(phba);
	if (vports && (phba->sli3_options & LPFC_SLI3_NPIV_ENABLED))
		for (i = 0; i <= phba->max_vports && vports[i] != NULL; i++) {
			/* Stop FLOGI/FDISC retries */
			ndlp = FUNC6(vports[i], Fabric_DID);
			if (ndlp)
				FUNC0(vports[i], ndlp);
			FUNC1(vports[i]);
			if (phba->sli_rev == LPFC_SLI_REV4)
				FUNC10(vports[i]);
			FUNC8(vports[i]);
			shost = FUNC9(vports[i]);
			FUNC12(shost->host_lock);
			vports[i]->fc_flag |= FC_VPORT_NEEDS_INIT_VPI;
			vports[i]->vpi_state &= ~LPFC_VPI_REGISTERED;
			FUNC13(shost->host_lock);
		}
	FUNC3(phba, vports);
	if (i == 0 && (!(phba->sli3_options & LPFC_SLI3_NPIV_ENABLED))) {
		ndlp = FUNC6(phba->pport, Fabric_DID);
		if (ndlp)
			FUNC0(phba->pport, ndlp);
		FUNC1(phba->pport);
		if (phba->sli_rev == LPFC_SLI_REV4)
			FUNC10(phba->pport);
		FUNC8(phba->pport);
		shost = FUNC9(phba->pport);
		FUNC12(shost->host_lock);
		phba->pport->fc_flag |= FC_VPORT_NEEDS_INIT_VPI;
		phba->pport->vpi_state &= ~LPFC_VPI_REGISTERED;
		FUNC13(shost->host_lock);
	}

	/* Cleanup any outstanding ELS commands */
	FUNC4(phba);

	/* Unregister the physical port VFI */
	rc = FUNC7(phba->pport);
	return rc;
}