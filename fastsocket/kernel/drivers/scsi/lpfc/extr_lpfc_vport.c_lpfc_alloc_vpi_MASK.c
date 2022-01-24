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
struct TYPE_3__ {int /*<<< orphan*/  vpi_used; } ;
struct TYPE_4__ {TYPE_1__ max_cfg_param; } ;
struct lpfc_hba {int max_vpi; scalar_t__ sli_rev; int /*<<< orphan*/  hbalock; TYPE_2__ sli4_hba; int /*<<< orphan*/  vpi_bmask; } ;

/* Variables and functions */
 scalar_t__ LPFC_SLI_REV4 ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(struct lpfc_hba *phba)
{
	unsigned long vpi;

	FUNC2(&phba->hbalock);
	/* Start at bit 1 because vpi zero is reserved for the physical port */
	vpi = FUNC0(phba->vpi_bmask, (phba->max_vpi + 1), 1);
	if (vpi > phba->max_vpi)
		vpi = 0;
	else
		FUNC1(vpi, phba->vpi_bmask);
	if (phba->sli_rev == LPFC_SLI_REV4)
		phba->sli4_hba.max_cfg_param.vpi_used++;
	FUNC3(&phba->hbalock);
	return vpi;
}