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
struct lpfc_vport {scalar_t__ work_port_events; int /*<<< orphan*/  load_flag; } ;
struct lpfc_hba {struct lpfc_vport* pport; int /*<<< orphan*/  vpi_ids; int /*<<< orphan*/  vpi_bmask; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_UNLOADING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC1 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct lpfc_hba *phba)
{
	struct lpfc_vport *vport = phba->pport;
	struct Scsi_Host  *shost = FUNC1(vport);

	FUNC6(shost->host_lock);
	vport->load_flag |= FC_UNLOADING;
	FUNC7(shost->host_lock);

	FUNC0(phba->vpi_bmask);
	FUNC0(phba->vpi_ids);

	FUNC5(phba);

	phba->pport->work_port_events = 0;

	FUNC4(phba);

	FUNC2(phba);

	FUNC3(phba);

	return;
}