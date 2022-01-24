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
struct lpfc_hba {int /*<<< orphan*/  hbalock; } ;
struct lpfc_cq_event {int dummy; } ;

/* Variables and functions */
 struct lpfc_cq_event* FUNC0 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

struct lpfc_cq_event *
FUNC3(struct lpfc_hba *phba)
{
	struct lpfc_cq_event *cq_event;
	unsigned long iflags;

	FUNC1(&phba->hbalock, iflags);
	cq_event = FUNC0(phba);
	FUNC2(&phba->hbalock, iflags);
	return cq_event;
}