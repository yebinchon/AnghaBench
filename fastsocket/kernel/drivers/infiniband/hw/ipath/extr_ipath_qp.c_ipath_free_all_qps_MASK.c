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
struct ipath_qp_table {size_t max; TYPE_1__* map; int /*<<< orphan*/  lock; struct ipath_qp** table; } ;
struct ipath_qp {struct ipath_qp* next; } ;
struct TYPE_2__ {scalar_t__ page; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

unsigned FUNC4(struct ipath_qp_table *qpt)
{
	unsigned long flags;
	struct ipath_qp *qp;
	u32 n, qp_inuse = 0;

	FUNC2(&qpt->lock, flags);
	for (n = 0; n < qpt->max; n++) {
		qp = qpt->table[n];
		qpt->table[n] = NULL;

		for (; qp; qp = qp->next)
			qp_inuse++;
	}
	FUNC3(&qpt->lock, flags);

	for (n = 0; n < FUNC0(qpt->map); n++)
		if (qpt->map[n].page)
			FUNC1((unsigned long) qpt->map[n].page);
	return qp_inuse;
}