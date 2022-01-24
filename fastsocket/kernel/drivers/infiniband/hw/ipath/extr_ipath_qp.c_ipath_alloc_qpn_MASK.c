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
struct ipath_qp_table {int max; int /*<<< orphan*/  lock; struct ipath_qp** table; } ;
struct TYPE_2__ {int qp_num; } ;
struct ipath_qp {int /*<<< orphan*/  refcount; struct ipath_qp* next; TYPE_1__ ibqp; } ;
typedef  enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;

/* Variables and functions */
 int FUNC0 (struct ipath_qp_table*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct ipath_qp_table *qpt, struct ipath_qp *qp,
			   enum ib_qp_type type)
{
	unsigned long flags;
	int ret;

	ret = FUNC0(qpt, type);
	if (ret < 0)
		goto bail;
	qp->ibqp.qp_num = ret;

	/* Add the QP to the hash table. */
	FUNC2(&qpt->lock, flags);

	ret %= qpt->max;
	qp->next = qpt->table[ret];
	qpt->table[ret] = qp;
	FUNC1(&qp->refcount);

	FUNC3(&qpt->lock, flags);
	ret = 0;

bail:
	return ret;
}