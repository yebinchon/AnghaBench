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
struct lpfc_vport {int dummy; } ;
struct lpfc_sli_ring {int /*<<< orphan*/  txcmplq; } ;
struct lpfc_sli {int sli_flag; struct lpfc_sli_ring* ring; } ;
struct lpfc_hba {scalar_t__ link_state; int max_vpi; struct lpfc_vport* pport; struct lpfc_sli sli; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int ENODEV ; 
 int LPFC_BLOCK_MGMT_IO ; 
 size_t LPFC_FCP_RING ; 
 scalar_t__ LPFC_HBA_ERROR ; 
 int LPFC_SLI_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct lpfc_vport** FUNC1 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,struct lpfc_vport**) ; 
 struct Scsi_Host* FUNC3 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 

__attribute__((used)) static int
FUNC6(struct lpfc_hba *phba)
{
	struct lpfc_vport **vports;
	struct Scsi_Host *shost;
	struct lpfc_sli *psli;
	struct lpfc_sli_ring *pring;
	int i = 0;

	psli = &phba->sli;
	if (!psli)
		return -ENODEV;

	pring = &psli->ring[LPFC_FCP_RING];
	if (!pring)
		return -ENODEV;

	if ((phba->link_state == LPFC_HBA_ERROR) ||
	    (psli->sli_flag & LPFC_BLOCK_MGMT_IO) ||
	    (!(psli->sli_flag & LPFC_SLI_ACTIVE)))
		return -EACCES;

	vports = FUNC1(phba);
	if (vports) {
		for (i = 0; i <= phba->max_vpi && vports[i] != NULL; i++) {
			shost = FUNC3(vports[i]);
			FUNC5(shost);
		}
		FUNC2(phba, vports);
	} else {
		shost = FUNC3(phba->pport);
		FUNC5(shost);
	}

	while (!FUNC0(&pring->txcmplq)) {
		if (i++ > 500)  /* wait up to 5 seconds */
			break;
		FUNC4(10);
	}
	return 0;
}