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
struct lpfc_hba {int cfg_fcp_io_channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_hba*) ; 

void
FUNC9(struct lpfc_hba *phba)
{
	int fcp_wqidx;

	/*
	 * Dump Work Queues (WQs)
	 */
	FUNC8(phba);
	FUNC2(phba);

	for (fcp_wqidx = 0; fcp_wqidx < phba->cfg_fcp_io_channel; fcp_wqidx++)
		FUNC4(phba, fcp_wqidx);

	FUNC6(phba);
	FUNC0(phba);
	/*
	 * Dump Complete Queues (CQs)
	 */
	FUNC7(phba);
	FUNC1(phba);

	for (fcp_wqidx = 0; fcp_wqidx < phba->cfg_fcp_io_channel; fcp_wqidx++)
		FUNC3(phba, fcp_wqidx);

	/*
	 * Dump Event Queues (EQs)
	 */
	for (fcp_wqidx = 0; fcp_wqidx < phba->cfg_fcp_io_channel; fcp_wqidx++)
		FUNC5(phba, fcp_wqidx);
}