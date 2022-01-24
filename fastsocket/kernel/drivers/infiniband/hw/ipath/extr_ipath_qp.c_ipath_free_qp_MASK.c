#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ipath_qp_table {size_t max; int /*<<< orphan*/  lock; struct ipath_qp** table; } ;
struct TYPE_2__ {size_t qp_num; } ;
struct ipath_qp {int /*<<< orphan*/  refcount; struct ipath_qp* next; TYPE_1__ ibqp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct ipath_qp_table *qpt, struct ipath_qp *qp)
{
	struct ipath_qp *q, **qpp;
	unsigned long flags;

	FUNC1(&qpt->lock, flags);

	/* Remove QP from the hash table. */
	qpp = &qpt->table[qp->ibqp.qp_num % qpt->max];
	for (; (q = *qpp) != NULL; qpp = &q->next) {
		if (q == qp) {
			*qpp = qp->next;
			qp->next = NULL;
			FUNC0(&qp->refcount);
			break;
		}
	}

	FUNC2(&qpt->lock, flags);
}