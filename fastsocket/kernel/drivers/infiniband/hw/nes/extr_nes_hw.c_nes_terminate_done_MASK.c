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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct nes_vnic {struct nes_device* nesdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct nes_qp {int term_flags; int /*<<< orphan*/  terminate_timer; int /*<<< orphan*/  lock; scalar_t__ hte_added; TYPE_1__ ibqp; } ;
struct nes_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NES_CQP_QP_DEL_HTE ; 
 int /*<<< orphan*/  NES_CQP_QP_IWARP_STATE_ERROR ; 
 int /*<<< orphan*/  NES_CQP_QP_RESET ; 
 int NES_TERM_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nes_qp*) ; 
 int /*<<< orphan*/  FUNC2 (struct nes_device*,struct nes_qp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct nes_vnic* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct nes_qp *nesqp, int timeout_occurred)
{
	u32 next_iwarp_state = NES_CQP_QP_IWARP_STATE_ERROR;
	unsigned long flags;
	struct nes_vnic *nesvnic = FUNC5(nesqp->ibqp.device);
	struct nes_device *nesdev = nesvnic->nesdev;
	u8 first_time = 0;

	FUNC3(&nesqp->lock, flags);
	if (nesqp->hte_added) {
		nesqp->hte_added = 0;
		next_iwarp_state |= NES_CQP_QP_DEL_HTE;
	}

	first_time = (nesqp->term_flags & NES_TERM_DONE) == 0;
	nesqp->term_flags |= NES_TERM_DONE;
	FUNC4(&nesqp->lock, flags);

	/* Make sure we go through this only once */
	if (first_time) {
		if (timeout_occurred == 0)
			FUNC0(&nesqp->terminate_timer);
		else
			next_iwarp_state |= NES_CQP_QP_RESET;

		FUNC2(nesdev, nesqp, next_iwarp_state, 0, 0);
		FUNC1(nesqp);
	}
}