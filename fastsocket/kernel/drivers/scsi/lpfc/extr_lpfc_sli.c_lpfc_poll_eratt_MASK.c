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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ sli_intr; scalar_t__ sli_prev_intr; scalar_t__ sli_ips; } ;
struct TYPE_4__ {TYPE_1__ slistat; } ;
struct lpfc_hba {int /*<<< orphan*/  eratt_poll; TYPE_2__ sli; } ;

/* Variables and functions */
 int LPFC_ERATT_POLL_INTERVAL ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC1 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 

void FUNC5(unsigned long ptr)
{
	struct lpfc_hba *phba;
	uint32_t eratt = 0, rem;
	uint64_t sli_intr, cnt;

	phba = (struct lpfc_hba *)ptr;

	/* Here we will also keep track of interrupts per sec of the hba */
	sli_intr = phba->sli.slistat.sli_intr;

	if (phba->sli.slistat.sli_prev_intr > sli_intr)
		cnt = (((uint64_t)(-1) - phba->sli.slistat.sli_prev_intr) +
			sli_intr);
	else
		cnt = (sli_intr - phba->sli.slistat.sli_prev_intr);

	/* 64-bit integer division not supporte on 32-bit x86 - use do_div */
	rem = FUNC0(cnt, LPFC_ERATT_POLL_INTERVAL);
	phba->sli.slistat.sli_ips = cnt;

	phba->sli.slistat.sli_prev_intr = sli_intr;

	/* Check chip HA register for error event */
	eratt = FUNC1(phba);

	if (eratt)
		/* Tell the worker thread there is work to do */
		FUNC2(phba);
	else
		/* Restart the timer for next eratt poll */
		FUNC3(&phba->eratt_poll,
			  jiffies +
			  FUNC4(1000 * LPFC_ERATT_POLL_INTERVAL));
	return;
}