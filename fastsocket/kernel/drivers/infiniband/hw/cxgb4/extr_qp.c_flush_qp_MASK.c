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
struct TYPE_6__ {scalar_t__ uobject; } ;
struct TYPE_5__ {int /*<<< orphan*/  scq; int /*<<< orphan*/  rcq; } ;
struct c4iw_qp {int /*<<< orphan*/  wq; TYPE_2__ ibqp; TYPE_1__ attr; int /*<<< orphan*/  rhp; } ;
struct TYPE_7__ {int /*<<< orphan*/  cq_context; int /*<<< orphan*/  (* comp_handler ) (TYPE_3__*,int /*<<< orphan*/ ) ;} ;
struct c4iw_cq {int /*<<< orphan*/  comp_handler_lock; TYPE_3__ ibcq; int /*<<< orphan*/  cq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct c4iw_qp*,struct c4iw_cq*,struct c4iw_cq*) ; 
 struct c4iw_cq* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct c4iw_qp *qhp)
{
	struct c4iw_cq *rchp, *schp;
	unsigned long flag;

	rchp = FUNC1(qhp->rhp, qhp->attr.rcq);
	schp = FUNC1(qhp->rhp, qhp->attr.scq);

	if (qhp->ibqp.uobject) {
		FUNC7(&qhp->wq);
		FUNC6(&rchp->cq);
		FUNC2(&rchp->comp_handler_lock, flag);
		(*rchp->ibcq.comp_handler)(&rchp->ibcq, rchp->ibcq.cq_context);
		FUNC3(&rchp->comp_handler_lock, flag);
		if (schp != rchp) {
			FUNC6(&schp->cq);
			FUNC2(&schp->comp_handler_lock, flag);
			(*schp->ibcq.comp_handler)(&schp->ibcq,
					schp->ibcq.cq_context);
			FUNC3(&schp->comp_handler_lock, flag);
		}
		return;
	}
	FUNC0(qhp, rchp, schp);
}