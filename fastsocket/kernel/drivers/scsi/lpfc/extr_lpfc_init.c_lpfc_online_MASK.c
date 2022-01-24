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
struct lpfc_vport {int fc_flag; scalar_t__ port_type; scalar_t__ vpi; } ;
struct TYPE_3__ {int /*<<< orphan*/  vpi_used; } ;
struct TYPE_4__ {TYPE_1__ max_cfg_param; } ;
struct lpfc_hba {scalar_t__ sli_rev; int max_vports; int sli3_options; int /*<<< orphan*/  hbalock; TYPE_2__ sli4_hba; struct lpfc_vport* pport; } ;
struct Scsi_Host {int /*<<< orphan*/ * host_lock; } ;

/* Variables and functions */
 int FC_OFFLINE_MODE ; 
 int FC_VPORT_NEEDS_INIT_VPI ; 
 int FC_VPORT_NEEDS_REG_VPI ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int /*<<< orphan*/  LPFC_MBX_WAIT ; 
 scalar_t__ LPFC_PHYSICAL_PORT ; 
 int LPFC_SLI3_NPIV_ENABLED ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 struct lpfc_vport** FUNC1 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,struct lpfc_vport**) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct Scsi_Host* FUNC4 (struct lpfc_vport*) ; 
 scalar_t__ FUNC5 (struct lpfc_hba*) ; 
 scalar_t__ FUNC6 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int
FUNC11(struct lpfc_hba *phba)
{
	struct lpfc_vport *vport;
	struct lpfc_vport **vports;
	int i;
	bool vpis_cleared = false;

	if (!phba)
		return 0;
	vport = phba->pport;

	if (!(vport->fc_flag & FC_OFFLINE_MODE))
		return 0;

	FUNC3(phba, KERN_WARNING, LOG_INIT,
			"0458 Bring Adapter online\n");

	FUNC0(phba, LPFC_MBX_WAIT);

	if (!FUNC7(phba)) {
		FUNC8(phba);
		return 1;
	}

	if (phba->sli_rev == LPFC_SLI_REV4) {
		if (FUNC5(phba)) { /* Initialize SLI4 HBA */
			FUNC8(phba);
			return 1;
		}
		FUNC9(&phba->hbalock);
		if (!phba->sli4_hba.max_cfg_param.vpi_used)
			vpis_cleared = true;
		FUNC10(&phba->hbalock);
	} else {
		if (FUNC6(phba)) {	/* Initialize SLI2/SLI3 HBA */
			FUNC8(phba);
			return 1;
		}
	}

	vports = FUNC1(phba);
	if (vports != NULL)
		for (i = 0; i <= phba->max_vports && vports[i] != NULL; i++) {
			struct Scsi_Host *shost;
			shost = FUNC4(vports[i]);
			FUNC9(shost->host_lock);
			vports[i]->fc_flag &= ~FC_OFFLINE_MODE;
			if (phba->sli3_options & LPFC_SLI3_NPIV_ENABLED)
				vports[i]->fc_flag |= FC_VPORT_NEEDS_REG_VPI;
			if (phba->sli_rev == LPFC_SLI_REV4) {
				vports[i]->fc_flag |= FC_VPORT_NEEDS_INIT_VPI;
				if ((vpis_cleared) &&
				    (vports[i]->port_type !=
					LPFC_PHYSICAL_PORT))
					vports[i]->vpi = 0;
			}
			FUNC10(shost->host_lock);
		}
		FUNC2(phba, vports);

	FUNC8(phba);
	return 0;
}