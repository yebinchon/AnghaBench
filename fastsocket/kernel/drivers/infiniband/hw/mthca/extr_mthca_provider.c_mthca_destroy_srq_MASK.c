#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mthca_ucontext {int /*<<< orphan*/  db_tab; int /*<<< orphan*/  uar; } ;
struct ib_srq {int /*<<< orphan*/  device; TYPE_1__* uobject; } ;
struct TYPE_5__ {int /*<<< orphan*/  db_index; } ;
struct TYPE_4__ {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_srq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (struct ib_srq*) ; 
 struct mthca_ucontext* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ib_srq *srq)
{
	struct mthca_ucontext *context;

	if (srq->uobject) {
		context = FUNC5(srq->uobject->context);

		FUNC2(FUNC3(srq->device), &context->uar,
				    context->db_tab, FUNC4(srq)->db_index);
	}

	FUNC1(FUNC3(srq->device), FUNC4(srq));
	FUNC0(srq);

	return 0;
}