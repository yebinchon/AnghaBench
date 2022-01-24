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
typedef  int /*<<< orphan*/  uint32_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_hba {int max_vports; int /*<<< orphan*/  link_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  Fabric_DID ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*,struct lpfc_nodelist*) ; 
 struct lpfc_vport** FUNC1 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,struct lpfc_vport**) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*) ; 
 struct lpfc_nodelist* FUNC4 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*) ; 

void
FUNC6(struct lpfc_hba *phba)
{
	struct lpfc_vport **vports;
	struct lpfc_nodelist *ndlp;
	uint32_t link_state;
	int i;

	/* Treat this failure as linkdown for all vports */
	link_state = phba->link_state;
	FUNC5(phba);
	phba->link_state = link_state;

	vports = FUNC1(phba);

	if (vports) {
		for (i = 0; i <= phba->max_vports && vports[i] != NULL; i++) {
			ndlp = FUNC4(vports[i], Fabric_DID);
			if (ndlp)
				FUNC0(vports[i], ndlp);
			FUNC3(vports[i]);
		}
		FUNC2(phba, vports);
	}
}