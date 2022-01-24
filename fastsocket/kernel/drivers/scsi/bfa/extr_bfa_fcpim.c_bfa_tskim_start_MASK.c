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
typedef  int /*<<< orphan*/  u8 ;
struct scsi_lun {int dummy; } ;
struct bfa_tskim_s {int tm_cmnd; int /*<<< orphan*/  qe; int /*<<< orphan*/  notify; int /*<<< orphan*/  tsecs; struct scsi_lun lun; struct bfa_itnim_s* itnim; } ;
struct bfa_itnim_s {int /*<<< orphan*/  tsk_q; } ;
typedef  enum fcp_tm_cmnd { ____Placeholder_fcp_tm_cmnd } fcp_tm_cmnd ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  BFA_TSKIM_SM_START ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_tskim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_itnim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tm_cmnds ; 

void
FUNC3(struct bfa_tskim_s *tskim, struct bfa_itnim_s *itnim,
			struct scsi_lun lun,
			enum fcp_tm_cmnd tm_cmnd, u8 tsecs)
{
	tskim->itnim	= itnim;
	tskim->lun	= lun;
	tskim->tm_cmnd = tm_cmnd;
	tskim->tsecs	= tsecs;
	tskim->notify  = BFA_FALSE;
	FUNC1(itnim, tm_cmnds);

	FUNC2(&tskim->qe, &itnim->tsk_q);
	FUNC0(tskim, BFA_TSKIM_SM_START);
}