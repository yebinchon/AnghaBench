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
typedef  int uint32_t ;
struct lpfc_vport {int work_port_events; int /*<<< orphan*/  work_port_lock; struct lpfc_hba* phba; } ;
struct lpfc_hba {int dummy; } ;

/* Variables and functions */
 int WORKER_DISC_TMO ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int) ; 

void
FUNC4(unsigned long ptr)
{
	struct lpfc_vport *vport = (struct lpfc_vport *) ptr;
	struct lpfc_hba   *phba = vport->phba;
	uint32_t tmo_posted;
	unsigned long flags = 0;

	if (FUNC3(!phba))
		return;

	FUNC1(&vport->work_port_lock, flags);
	tmo_posted = vport->work_port_events & WORKER_DISC_TMO;
	if (!tmo_posted)
		vport->work_port_events |= WORKER_DISC_TMO;
	FUNC2(&vport->work_port_lock, flags);

	if (!tmo_posted)
		FUNC0(phba);
	return;
}