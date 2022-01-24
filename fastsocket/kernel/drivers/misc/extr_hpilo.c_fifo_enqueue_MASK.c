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
struct ilo_hwinfo {int /*<<< orphan*/  fifo_lock; } ;
struct fifo {int* fifobar; int tail; int imask; int merge; } ;

/* Variables and functions */
 int ENTRY_MASK_NOSTATE ; 
 int ENTRY_MASK_O ; 
 struct fifo* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct ilo_hwinfo *hw, char *fifobar, int entry)
{
	struct fifo *fifo_q = FUNC0(fifobar);
	unsigned long flags;
	int ret = 0;

	FUNC1(&hw->fifo_lock, flags);
	if (!(fifo_q->fifobar[(fifo_q->tail + 1) & fifo_q->imask]
	      & ENTRY_MASK_O)) {
		fifo_q->fifobar[fifo_q->tail & fifo_q->imask] |=
				(entry & ENTRY_MASK_NOSTATE) | fifo_q->merge;
		fifo_q->tail += 1;
		ret = 1;
	}
	FUNC2(&hw->fifo_lock, flags);

	return ret;
}