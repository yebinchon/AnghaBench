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
typedef  size_t u32 ;
struct ipath_qp_table {size_t max; int /*<<< orphan*/  lock; struct ipath_qp** table; } ;
struct TYPE_2__ {size_t qp_num; } ;
struct ipath_qp {int /*<<< orphan*/  refcount; TYPE_1__ ibqp; struct ipath_qp* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

struct ipath_qp *FUNC3(struct ipath_qp_table *qpt, u32 qpn)
{
	unsigned long flags;
	struct ipath_qp *qp;

	FUNC1(&qpt->lock, flags);

	for (qp = qpt->table[qpn % qpt->max]; qp; qp = qp->next) {
		if (qp->ibqp.qp_num == qpn) {
			FUNC0(&qp->refcount);
			break;
		}
	}

	FUNC2(&qpt->lock, flags);
	return qp;
}