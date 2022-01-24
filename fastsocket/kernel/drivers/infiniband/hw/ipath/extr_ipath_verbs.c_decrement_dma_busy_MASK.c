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
struct ipath_qp {size_t state; scalar_t__ s_last; scalar_t__ s_head; int s_flags; int /*<<< orphan*/  wait_dma; int /*<<< orphan*/  s_lock; int /*<<< orphan*/  s_dma_busy; } ;

/* Variables and functions */
 int IPATH_FLUSH_SEND ; 
 int IPATH_S_WAIT_DMA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int* ib_ipath_state_ops ; 
 int /*<<< orphan*/  FUNC1 (struct ipath_qp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ipath_qp *qp)
{
	unsigned long flags;

	if (FUNC0(&qp->s_dma_busy)) {
		FUNC2(&qp->s_lock, flags);
		if ((ib_ipath_state_ops[qp->state] & IPATH_FLUSH_SEND &&
		     qp->s_last != qp->s_head) ||
		    (qp->s_flags & IPATH_S_WAIT_DMA))
			FUNC1(qp);
		FUNC3(&qp->s_lock, flags);
		FUNC4(&qp->wait_dma);
	}
}