#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct lpfc_vport {int fc_flag; scalar_t__ work_port_events; } ;
struct lpfc_hba {int max_vports; int /*<<< orphan*/  hbalock; scalar_t__ work_ha; TYPE_1__* pport; } ;
struct Scsi_Host {int /*<<< orphan*/ * host_lock; } ;
struct TYPE_2__ {int fc_flag; } ;

/* Variables and functions */
 int FC_OFFLINE_MODE ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_INIT ; 
 struct lpfc_vport** FUNC0 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,struct lpfc_vport**) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct Scsi_Host* FUNC3 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void
FUNC9(struct lpfc_hba *phba)
{
	struct Scsi_Host  *shost;
	struct lpfc_vport **vports;
	int i;

	if (phba->pport->fc_flag & FC_OFFLINE_MODE)
		return;

	/* stop port and all timers associated with this hba */
	FUNC5(phba);
	vports = FUNC0(phba);
	if (vports != NULL)
		for (i = 0; i <= phba->max_vports && vports[i] != NULL; i++)
			FUNC6(vports[i]);
	FUNC1(phba, vports);
	FUNC2(phba, KERN_WARNING, LOG_INIT,
			"0460 Bring Adapter offline\n");
	/* Bring down the SLI Layer and cleanup.  The HBA is offline
	   now.  */
	FUNC4(phba);
	FUNC7(&phba->hbalock);
	phba->work_ha = 0;
	FUNC8(&phba->hbalock);
	vports = FUNC0(phba);
	if (vports != NULL)
		for (i = 0; i <= phba->max_vports && vports[i] != NULL; i++) {
			shost = FUNC3(vports[i]);
			FUNC7(shost->host_lock);
			vports[i]->work_port_events = 0;
			vports[i]->fc_flag |= FC_OFFLINE_MODE;
			FUNC8(shost->host_lock);
		}
	FUNC1(phba, vports);
}