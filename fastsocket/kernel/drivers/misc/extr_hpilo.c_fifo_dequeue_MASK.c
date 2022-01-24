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
typedef  int u64 ;
struct ilo_hwinfo {int /*<<< orphan*/  fifo_lock; } ;
struct fifo {int* fifobar; size_t head; size_t imask; } ;

/* Variables and functions */
 int ENTRY_MASK ; 
 int ENTRY_MASK_C ; 
 int ENTRY_MASK_NOSTATE ; 
 struct fifo* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct ilo_hwinfo *hw, char *fifobar, int *entry)
{
	struct fifo *fifo_q = FUNC0(fifobar);
	unsigned long flags;
	int ret = 0;
	u64 c;

	FUNC1(&hw->fifo_lock, flags);
	c = fifo_q->fifobar[fifo_q->head & fifo_q->imask];
	if (c & ENTRY_MASK_C) {
		if (entry)
			*entry = c & ENTRY_MASK_NOSTATE;

		fifo_q->fifobar[fifo_q->head & fifo_q->imask] =
							(c | ENTRY_MASK) + 1;
		fifo_q->head += 1;
		ret = 1;
	}
	FUNC2(&hw->fifo_lock, flags);

	return ret;
}