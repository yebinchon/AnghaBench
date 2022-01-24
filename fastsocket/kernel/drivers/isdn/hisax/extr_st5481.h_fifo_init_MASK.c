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
struct fifo {int size; int /*<<< orphan*/  lock; scalar_t__ count; scalar_t__ w; scalar_t__ r; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC1(struct fifo *fifo, int size)
{
	fifo->r = fifo->w = fifo->count = 0;
	fifo->size = size;
	FUNC0(&fifo->lock);
}