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
struct lpfc_hba {int /*<<< orphan*/  worker_thread; int /*<<< orphan*/  brd_no; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct lpfc_hba*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_do_work ; 

__attribute__((used)) static int
FUNC3(struct lpfc_hba *phba)
{
	int error;

	/* Startup the kernel thread for this host adapter. */
	phba->worker_thread = FUNC2(lpfc_do_work, phba,
					  "lpfc_worker_%d", phba->brd_no);
	if (FUNC0(phba->worker_thread)) {
		error = FUNC1(phba->worker_thread);
		return error;
	}

	return 0;
}