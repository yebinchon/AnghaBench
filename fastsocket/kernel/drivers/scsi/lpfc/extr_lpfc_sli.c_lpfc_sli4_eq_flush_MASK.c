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
struct lpfc_queue {int dummy; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_eqe {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPFC_QUEUE_REARM ; 
 struct lpfc_eqe* FUNC0 (struct lpfc_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_queue*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct lpfc_hba *phba, struct lpfc_queue *eq)
{
	struct lpfc_eqe *eqe;

	/* walk all the EQ entries and drop on the floor */
	while ((eqe = FUNC0(eq)))
		;

	/* Clear and re-arm the EQ */
	FUNC1(eq, LPFC_QUEUE_REARM);
}