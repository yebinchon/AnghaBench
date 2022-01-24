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
struct qib_devdata {int /*<<< orphan*/  qib_diag_trans_lock; struct diag_observer_list_elt* diag_observer_list; } ;
struct diag_observer_list_elt {struct diag_observer_list_elt* next; struct diag_observer const* op; } ;
struct diag_observer {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct diag_observer_list_elt* FUNC3 (int) ; 

int FUNC4(struct qib_devdata *dd,
			  const struct diag_observer *op)
{
	struct diag_observer_list_elt *olp;
	int ret = -EINVAL;

	if (!dd || !op)
		goto bail;
	ret = -ENOMEM;
	olp = FUNC3(sizeof *olp);
	if (!olp) {
		FUNC0("vmalloc for observer failed\n");
		goto bail;
	}
	if (olp) {
		unsigned long flags;

		FUNC1(&dd->qib_diag_trans_lock, flags);
		olp->op = op;
		olp->next = dd->diag_observer_list;
		dd->diag_observer_list = olp;
		FUNC2(&dd->qib_diag_trans_lock, flags);
		ret = 0;
	}
bail:
	return ret;
}