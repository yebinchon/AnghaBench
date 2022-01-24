#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ib_cq {int /*<<< orphan*/  device; TYPE_1__* uobject; } ;
struct TYPE_7__ {int /*<<< orphan*/  set_ci_db_index; int /*<<< orphan*/  arm_db_index; } ;
struct TYPE_6__ {int /*<<< orphan*/  db_tab; int /*<<< orphan*/  uar; } ;
struct TYPE_5__ {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_cq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (struct ib_cq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ib_cq *cq)
{
	if (cq->uobject) {
		FUNC2(FUNC4(cq->device),
				    &FUNC5(cq->uobject->context)->uar,
				    FUNC5(cq->uobject->context)->db_tab,
				    FUNC3(cq)->arm_db_index);
		FUNC2(FUNC4(cq->device),
				    &FUNC5(cq->uobject->context)->uar,
				    FUNC5(cq->uobject->context)->db_tab,
				    FUNC3(cq)->set_ci_db_index);
	}
	FUNC1(FUNC4(cq->device), FUNC3(cq));
	FUNC0(cq);

	return 0;
}