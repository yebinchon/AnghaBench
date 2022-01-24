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
struct bfa_msgq {int /*<<< orphan*/  ioc_notify; struct bfa_ioc* ioc; int /*<<< orphan*/  rspq; int /*<<< orphan*/  cmdq; } ;
struct bfa_ioc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_MC_MSGQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_msgq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bfa_msgq*) ; 
 int /*<<< orphan*/  bfa_msgq_isr ; 
 int /*<<< orphan*/  bfa_msgq_notify ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bfa_msgq*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bfa_msgq*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_ioc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct bfa_msgq *msgq, struct bfa_ioc *ioc)
{
	msgq->ioc    = ioc;

	FUNC1(&msgq->cmdq, msgq);
	FUNC2(&msgq->rspq, msgq);

	FUNC3(msgq->ioc, BFI_MC_MSGQ, bfa_msgq_isr, msgq);
	FUNC5(&msgq->ioc_notify);
	FUNC0(&msgq->ioc_notify, bfa_msgq_notify, msgq);
	FUNC4(msgq->ioc, &msgq->ioc_notify);
}