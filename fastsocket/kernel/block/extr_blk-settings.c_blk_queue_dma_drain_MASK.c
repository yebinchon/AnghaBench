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
struct request_queue {unsigned int dma_drain_size; void* dma_drain_buffer; int /*<<< orphan*/ * dma_drain_needed; } ;
typedef  int /*<<< orphan*/  dma_drain_needed_fn ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct request_queue*,int) ; 
 int FUNC1 (struct request_queue*) ; 

int FUNC2(struct request_queue *q,
			       dma_drain_needed_fn *dma_drain_needed,
			       void *buf, unsigned int size)
{
	if (FUNC1(q) < 2)
		return -EINVAL;
	/* make room for appending the drain */
	FUNC0(q, FUNC1(q) - 1);
	q->dma_drain_needed = dma_drain_needed;
	q->dma_drain_buffer = buf;
	q->dma_drain_size = size;

	return 0;
}