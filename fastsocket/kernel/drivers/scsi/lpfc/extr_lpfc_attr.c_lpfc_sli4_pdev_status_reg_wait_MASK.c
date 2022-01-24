#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct lpfc_register {int /*<<< orphan*/  word0; int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {int /*<<< orphan*/  STATUSregaddr; } ;
struct TYPE_6__ {TYPE_1__ if_type2; } ;
struct TYPE_5__ {TYPE_3__ u; } ;
struct lpfc_hba {TYPE_2__ sli4_hba; } ;

/* Variables and functions */
 int EIO ; 
 int EPERM ; 
 int LPFC_FW_RESET_MAXIMUM_WAIT_10MS_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct lpfc_register*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lpfc_sliport_status_err ; 
 int /*<<< orphan*/  lpfc_sliport_status_rdy ; 
 int /*<<< orphan*/  lpfc_sliport_status_rn ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int
FUNC3(struct lpfc_hba *phba)
{
	struct lpfc_register portstat_reg = {0};
	int i;

	FUNC2(100);
	FUNC1(phba->sli4_hba.u.if_type2.STATUSregaddr,
		   &portstat_reg.word0);

	/* verify if privilaged for the request operation */
	if (!FUNC0(lpfc_sliport_status_rn, &portstat_reg) &&
	    !FUNC0(lpfc_sliport_status_err, &portstat_reg))
		return -EPERM;

	/* wait for the SLI port firmware ready after firmware reset */
	for (i = 0; i < LPFC_FW_RESET_MAXIMUM_WAIT_10MS_CNT; i++) {
		FUNC2(10);
		FUNC1(phba->sli4_hba.u.if_type2.STATUSregaddr,
			   &portstat_reg.word0);
		if (!FUNC0(lpfc_sliport_status_err, &portstat_reg))
			continue;
		if (!FUNC0(lpfc_sliport_status_rn, &portstat_reg))
			continue;
		if (!FUNC0(lpfc_sliport_status_rdy, &portstat_reg))
			continue;
		break;
	}

	if (i < LPFC_FW_RESET_MAXIMUM_WAIT_10MS_CNT)
		return 0;
	else
		return -EIO;
}