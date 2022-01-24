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
struct scsi_lun {int dummy; } ;
struct bfa_tskim_s {int tm_cmnd; int /*<<< orphan*/  lun; } ;
typedef  int /*<<< orphan*/  lun ;
typedef  int bfa_boolean_t ;

/* Variables and functions */
 int BFA_FALSE ; 
 int BFA_TRUE ; 
#define  FCP_TM_ABORT_TASK_SET 132 
#define  FCP_TM_CLEAR_ACA 131 
#define  FCP_TM_CLEAR_TASK_SET 130 
#define  FCP_TM_LUN_RESET 129 
#define  FCP_TM_TARGET_RESET 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct scsi_lun*,int) ; 

__attribute__((used)) static bfa_boolean_t
FUNC2(struct bfa_tskim_s *tskim, struct scsi_lun lun)
{
	switch (tskim->tm_cmnd) {
	case FCP_TM_TARGET_RESET:
		return BFA_TRUE;

	case FCP_TM_ABORT_TASK_SET:
	case FCP_TM_CLEAR_TASK_SET:
	case FCP_TM_LUN_RESET:
	case FCP_TM_CLEAR_ACA:
		return !FUNC1(&tskim->lun, &lun, sizeof(lun));

	default:
		FUNC0(1);
	}

	return BFA_FALSE;
}