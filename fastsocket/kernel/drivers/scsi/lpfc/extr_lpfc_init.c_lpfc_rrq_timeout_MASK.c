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
struct lpfc_hba {TYPE_1__* pport; int /*<<< orphan*/  hba_flag; } ;
struct TYPE_2__ {int /*<<< orphan*/  work_port_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  HBA_RRQ_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC3(unsigned long ptr)
{
	struct lpfc_hba *phba;
	unsigned long iflag;

	phba = (struct lpfc_hba *)ptr;
	FUNC1(&phba->pport->work_port_lock, iflag);
	phba->hba_flag |= HBA_RRQ_ACTIVE;
	FUNC2(&phba->pport->work_port_lock, iflag);
	FUNC0(phba);
}