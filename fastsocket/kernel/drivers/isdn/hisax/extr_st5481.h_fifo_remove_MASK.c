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
struct fifo {int size; int /*<<< orphan*/  lock; int /*<<< orphan*/  count; int /*<<< orphan*/  r; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline int FUNC2(struct fifo *fifo)
{
	unsigned long flags;
	int index;

	if (!fifo) {
		return -1;
	}

	FUNC0(&fifo->lock, flags);
	if (!fifo->count) {
		// FIFO empty
		index = -1;
	} else {
		// Return index where to get the next data from the FIFO
		index = fifo->r++ & (fifo->size-1);
		fifo->count--;
	}
	FUNC1(&fifo->lock, flags);

	return index;
}