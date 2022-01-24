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
struct lpfc_vport {int dummy; } ;
struct lpfc_hba {int max_vports; int /*<<< orphan*/  fabric_block_timer; int /*<<< orphan*/  bit_flags; int /*<<< orphan*/  link_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FABRIC_COMANDS_BLOCKED ; 
 int /*<<< orphan*/  LPFC_LINK_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*) ; 
 struct lpfc_vport** FUNC3 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,struct lpfc_vport**) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_vport*) ; 

__attribute__((used)) static int
FUNC6(struct lpfc_hba *phba)
{
	struct lpfc_vport **vports;
	int i;

	FUNC2(phba);
	phba->link_state = LPFC_LINK_UP;

	/* Unblock fabric iocbs if they are blocked */
	FUNC0(FABRIC_COMANDS_BLOCKED, &phba->bit_flags);
	FUNC1(&phba->fabric_block_timer);

	vports = FUNC3(phba);
	if (vports != NULL)
		for (i = 0; i <= phba->max_vports && vports[i] != NULL; i++)
			FUNC5(vports[i]);
	FUNC4(phba, vports);

	return 0;
}