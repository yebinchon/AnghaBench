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
struct lpfc_sli_ring {int ringno; } ;
struct lpfc_hba {int sli3_options; int /*<<< orphan*/  CAregaddr; } ;

/* Variables and functions */
 int CA_R0ATT ; 
 int LPFC_SLI3_CRP_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct lpfc_hba *phba, struct lpfc_sli_ring *pring)
{
	int ringno = pring->ringno;

	/*
	 * Tell the HBA that there is work to do in this ring.
	 */
	if (!(phba->sli3_options & LPFC_SLI3_CRP_ENABLED)) {
		FUNC1();
		FUNC2(CA_R0ATT << (ringno * 4), phba->CAregaddr);
		FUNC0(phba->CAregaddr); /* flush */
	}
}