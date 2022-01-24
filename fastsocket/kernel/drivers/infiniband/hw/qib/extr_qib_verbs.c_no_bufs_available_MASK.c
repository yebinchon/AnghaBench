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
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct qib_qp {size_t state; int /*<<< orphan*/  s_lock; int /*<<< orphan*/  s_flags; int /*<<< orphan*/  iowait; TYPE_1__ ibqp; } ;
struct qib_ibdev {int /*<<< orphan*/  pending_lock; int /*<<< orphan*/  piowait; int /*<<< orphan*/  n_piowait; } ;
struct qib_devdata {int /*<<< orphan*/  (* f_wantpiobuf_intr ) (struct qib_devdata*,int) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int QIB_PROCESS_RECV_OK ; 
 int /*<<< orphan*/  QIB_S_BUSY ; 
 int /*<<< orphan*/  QIB_S_WAIT_PIO ; 
 struct qib_devdata* FUNC0 (struct qib_ibdev*) ; 
 int* ib_qib_state_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct qib_devdata*,int) ; 
 struct qib_ibdev* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct qib_qp *qp)
{
	struct qib_ibdev *dev = FUNC8(qp->ibqp.device);
	struct qib_devdata *dd;
	unsigned long flags;
	int ret = 0;

	/*
	 * Note that as soon as want_buffer() is called and
	 * possibly before it returns, qib_ib_piobufavail()
	 * could be called. Therefore, put QP on the I/O wait list before
	 * enabling the PIO avail interrupt.
	 */
	FUNC4(&qp->s_lock, flags);
	if (ib_qib_state_ops[qp->state] & QIB_PROCESS_RECV_OK) {
		FUNC3(&dev->pending_lock);
		if (FUNC2(&qp->iowait)) {
			dev->n_piowait++;
			qp->s_flags |= QIB_S_WAIT_PIO;
			FUNC1(&qp->iowait, &dev->piowait);
			dd = FUNC0(dev);
			dd->f_wantpiobuf_intr(dd, 1);
		}
		FUNC5(&dev->pending_lock);
		qp->s_flags &= ~QIB_S_BUSY;
		ret = -EBUSY;
	}
	FUNC6(&qp->s_lock, flags);
	return ret;
}