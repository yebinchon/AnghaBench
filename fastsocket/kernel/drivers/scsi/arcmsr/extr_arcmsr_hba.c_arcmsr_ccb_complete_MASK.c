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
struct scsi_cmnd {int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct CommandControlBlock {int /*<<< orphan*/  list; int /*<<< orphan*/  startdone; struct scsi_cmnd* pcmd; struct AdapterControlBlock* acb; } ;
struct AdapterControlBlock {int /*<<< orphan*/  ccblist_lock; int /*<<< orphan*/  ccb_free_list; int /*<<< orphan*/  ccboutstandingcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCMSR_CCB_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct CommandControlBlock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC6(struct CommandControlBlock *ccb)
{
	struct AdapterControlBlock *acb = ccb->acb;
	struct scsi_cmnd *pcmd = ccb->pcmd;
	unsigned long flags;
	FUNC1(&acb->ccboutstandingcount);
	FUNC0(ccb);
	ccb->startdone = ARCMSR_CCB_DONE;
	FUNC3(&acb->ccblist_lock, flags);
	FUNC2(&ccb->list, &acb->ccb_free_list);
	FUNC4(&acb->ccblist_lock, flags);
	pcmd->scsi_done(pcmd);
}