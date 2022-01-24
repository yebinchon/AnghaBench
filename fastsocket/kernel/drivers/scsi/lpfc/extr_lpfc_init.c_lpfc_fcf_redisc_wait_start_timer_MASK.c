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
struct TYPE_2__ {int fcf_flag; int /*<<< orphan*/  redisc_wait; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; TYPE_1__ fcf; } ;

/* Variables and functions */
 int FCF_AVAILABLE ; 
 int FCF_REDISC_PEND ; 
 int FCF_SCAN_DONE ; 
 int /*<<< orphan*/  LPFC_FCF_REDISCOVER_WAIT_TMO ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct lpfc_hba *phba)
{
	unsigned long fcf_redisc_wait_tmo =
		(jiffies + FUNC1(LPFC_FCF_REDISCOVER_WAIT_TMO));
	/* Start fcf rediscovery wait period timer */
	FUNC0(&phba->fcf.redisc_wait, fcf_redisc_wait_tmo);
	FUNC2(&phba->hbalock);
	/* Allow action to new fcf asynchronous event */
	phba->fcf.fcf_flag &= ~(FCF_AVAILABLE | FCF_SCAN_DONE);
	/* Mark the FCF rediscovery pending state */
	phba->fcf.fcf_flag |= FCF_REDISC_PEND;
	FUNC3(&phba->hbalock);
}