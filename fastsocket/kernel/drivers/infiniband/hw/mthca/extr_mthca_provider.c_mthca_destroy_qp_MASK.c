#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ib_qp {int /*<<< orphan*/  device; TYPE_3__* uobject; } ;
struct TYPE_8__ {int /*<<< orphan*/  db_index; } ;
struct TYPE_7__ {int /*<<< orphan*/  db_index; } ;
struct TYPE_11__ {TYPE_2__ rq; TYPE_1__ sq; } ;
struct TYPE_10__ {int /*<<< orphan*/  db_tab; int /*<<< orphan*/  uar; } ;
struct TYPE_9__ {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (struct ib_qp*) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ib_qp *qp)
{
	if (qp->uobject) {
		FUNC2(FUNC3(qp->device),
				    &FUNC5(qp->uobject->context)->uar,
				    FUNC5(qp->uobject->context)->db_tab,
				    FUNC4(qp)->sq.db_index);
		FUNC2(FUNC3(qp->device),
				    &FUNC5(qp->uobject->context)->uar,
				    FUNC5(qp->uobject->context)->db_tab,
				    FUNC4(qp)->rq.db_index);
	}
	FUNC1(FUNC3(qp->device), FUNC4(qp));
	FUNC0(qp);
	return 0;
}