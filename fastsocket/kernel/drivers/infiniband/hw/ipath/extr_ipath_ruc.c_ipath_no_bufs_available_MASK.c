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
struct ipath_qp {size_t state; int /*<<< orphan*/  s_lock; int /*<<< orphan*/  piowait; int /*<<< orphan*/  s_flags; } ;
struct ipath_ibdev {int /*<<< orphan*/  dd; int /*<<< orphan*/  pending_lock; int /*<<< orphan*/  piowait; int /*<<< orphan*/  n_piowait; } ;

/* Variables and functions */
 int IPATH_PROCESS_SEND_OK ; 
 int /*<<< orphan*/  IPATH_S_BUSY ; 
 int /*<<< orphan*/  IPATH_S_WAITING ; 
 int* ib_ipath_state_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct ipath_qp*) ; 

__attribute__((used)) static int FUNC7(struct ipath_qp *qp,
				    struct ipath_ibdev *dev)
{
	unsigned long flags;
	int ret = 1;

	/*
	 * Note that as soon as want_buffer() is called and
	 * possibly before it returns, ipath_ib_piobufavail()
	 * could be called. Therefore, put QP on the piowait list before
	 * enabling the PIO avail interrupt.
	 */
	FUNC3(&qp->s_lock, flags);
	if (ib_ipath_state_ops[qp->state] & IPATH_PROCESS_SEND_OK) {
		dev->n_piowait++;
		qp->s_flags |= IPATH_S_WAITING;
		qp->s_flags &= ~IPATH_S_BUSY;
		FUNC2(&dev->pending_lock);
		if (FUNC1(&qp->piowait))
			FUNC0(&qp->piowait, &dev->piowait);
		FUNC4(&dev->pending_lock);
	} else
		ret = 0;
	FUNC5(&qp->s_lock, flags);
	if (ret)
		FUNC6(dev->dd, qp);
	return ret;
}