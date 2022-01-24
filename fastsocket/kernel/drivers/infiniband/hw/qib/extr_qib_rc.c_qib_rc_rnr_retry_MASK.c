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
struct qib_qp {int s_flags; int /*<<< orphan*/  s_lock; int /*<<< orphan*/  s_timer; } ;

/* Variables and functions */
 int QIB_S_WAIT_RNR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_qp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(unsigned long arg)
{
	struct qib_qp *qp = (struct qib_qp *)arg;
	unsigned long flags;

	FUNC2(&qp->s_lock, flags);
	if (qp->s_flags & QIB_S_WAIT_RNR) {
		qp->s_flags &= ~QIB_S_WAIT_RNR;
		FUNC0(&qp->s_timer);
		FUNC1(qp);
	}
	FUNC3(&qp->s_lock, flags);
}