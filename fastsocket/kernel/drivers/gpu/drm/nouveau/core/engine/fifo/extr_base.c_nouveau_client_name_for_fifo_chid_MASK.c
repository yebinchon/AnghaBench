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
typedef  size_t u32 ;
struct nouveau_fifo_chan {int dummy; } ;
struct nouveau_fifo {size_t min; size_t max; int /*<<< orphan*/  lock; scalar_t__* channel; } ;

/* Variables and functions */
 char const* FUNC0 (struct nouveau_fifo_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

const char *
FUNC3(struct nouveau_fifo *fifo, u32 chid)
{
	struct nouveau_fifo_chan *chan = NULL;
	unsigned long flags;

	FUNC1(&fifo->lock, flags);
	if (chid >= fifo->min && chid <= fifo->max)
		chan = (void *)fifo->channel[chid];
	FUNC2(&fifo->lock, flags);

	return FUNC0(chan);
}