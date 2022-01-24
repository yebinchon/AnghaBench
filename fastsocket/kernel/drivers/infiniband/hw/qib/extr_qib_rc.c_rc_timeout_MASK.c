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
struct qib_qp {int s_flags; int /*<<< orphan*/  r_lock; int /*<<< orphan*/  s_lock; scalar_t__ s_last_psn; int /*<<< orphan*/  s_timer; int /*<<< orphan*/  port_num; TYPE_1__ ibqp; } ;
struct qib_ibport {int /*<<< orphan*/  n_rc_timeouts; } ;

/* Variables and functions */
 int QIB_S_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_qp*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_qp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct qib_ibport* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(unsigned long arg)
{
	struct qib_qp *qp = (struct qib_qp *)arg;
	struct qib_ibport *ibp;
	unsigned long flags;

	FUNC4(&qp->r_lock, flags);
	FUNC3(&qp->s_lock);
	if (qp->s_flags & QIB_S_TIMER) {
		ibp = FUNC7(qp->ibqp.device, qp->port_num);
		ibp->n_rc_timeouts++;
		qp->s_flags &= ~QIB_S_TIMER;
		FUNC0(&qp->s_timer);
		FUNC1(qp, qp->s_last_psn + 1, 1);
		FUNC2(qp);
	}
	FUNC5(&qp->s_lock);
	FUNC6(&qp->r_lock, flags);
}