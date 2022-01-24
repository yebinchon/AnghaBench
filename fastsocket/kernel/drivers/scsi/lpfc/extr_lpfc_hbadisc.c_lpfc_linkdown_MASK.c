#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct lpfc_vport {int fc_flag; scalar_t__ fc_myDID; } ;
struct TYPE_8__ {int fcf_flag; } ;
struct lpfc_hba {scalar_t__ link_state; int max_vports; struct lpfc_vport* pport; int /*<<< orphan*/  mbox_mem_pool; int /*<<< orphan*/  hbalock; TYPE_1__ fcf; } ;
struct Scsi_Host {int /*<<< orphan*/ * host_lock; } ;
struct TYPE_9__ {struct lpfc_vport* vport; void* mbox_cmpl; } ;
typedef  TYPE_2__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int FCF_AVAILABLE ; 
 int FCF_SCAN_DONE ; 
 int FC_LBIT ; 
 int FC_PT2PT ; 
 int FC_PT2PT_PLOGI ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ LPFC_LINK_DOWN ; 
 int /*<<< orphan*/  LPFC_UNREG_ALL_DFLT_RPIS ; 
 scalar_t__ MBX_NOT_FINISHED ; 
 int /*<<< orphan*/  MBX_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,TYPE_2__*) ; 
 struct lpfc_vport** FUNC1 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,struct lpfc_vport**) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*) ; 
 struct Scsi_Host* FUNC5 (struct lpfc_vport*) ; 
 void* lpfc_sli_def_mbox_cmpl ; 
 scalar_t__ FUNC6 (struct lpfc_hba*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*,int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int
FUNC12(struct lpfc_hba *phba)
{
	struct lpfc_vport *vport = phba->pport;
	struct Scsi_Host  *shost = FUNC5(vport);
	struct lpfc_vport **vports;
	LPFC_MBOXQ_t          *mb;
	int i;

	if (phba->link_state == LPFC_LINK_DOWN)
		return 0;

	/* Block all SCSI stack I/Os */
	FUNC4(phba);

	FUNC10(&phba->hbalock);
	phba->fcf.fcf_flag &= ~(FCF_AVAILABLE | FCF_SCAN_DONE);
	FUNC11(&phba->hbalock);
	if (phba->link_state > LPFC_LINK_DOWN) {
		phba->link_state = LPFC_LINK_DOWN;
		FUNC10(shost->host_lock);
		phba->pport->fc_flag &= ~FC_LBIT;
		FUNC11(shost->host_lock);
	}
	vports = FUNC1(phba);
	if (vports != NULL)
		for (i = 0; i <= phba->max_vports && vports[i] != NULL; i++) {
			/* Issue a LINK DOWN event to all nodes */
			FUNC3(vports[i]);
		}
	FUNC2(phba, vports);
	/* Clean up any firmware default rpi's */
	mb = FUNC8(phba->mbox_mem_pool, GFP_KERNEL);
	if (mb) {
		FUNC7(phba, 0xffff, LPFC_UNREG_ALL_DFLT_RPIS, mb);
		mb->vport = vport;
		mb->mbox_cmpl = lpfc_sli_def_mbox_cmpl;
		if (FUNC6(phba, mb, MBX_NOWAIT)
		    == MBX_NOT_FINISHED) {
			FUNC9(mb, phba->mbox_mem_pool);
		}
	}

	/* Setup myDID for link up if we are in pt2pt mode */
	if (phba->pport->fc_flag & FC_PT2PT) {
		phba->pport->fc_myDID = 0;
		mb = FUNC8(phba->mbox_mem_pool, GFP_KERNEL);
		if (mb) {
			FUNC0(phba, mb);
			mb->mbox_cmpl = lpfc_sli_def_mbox_cmpl;
			mb->vport = vport;
			if (FUNC6(phba, mb, MBX_NOWAIT)
			    == MBX_NOT_FINISHED) {
				FUNC9(mb, phba->mbox_mem_pool);
			}
		}
		FUNC10(shost->host_lock);
		phba->pport->fc_flag &= ~(FC_PT2PT | FC_PT2PT_PLOGI);
		FUNC11(shost->host_lock);
	}

	return 0;
}