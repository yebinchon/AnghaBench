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
struct ipz_queue {scalar_t__ current_q_offset; int pagesize; scalar_t__ queue_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (struct ipz_queue*) ; 

void *FUNC2(struct ipz_queue *queue)
{
	void *ret = FUNC1(queue);
	queue->current_q_offset += queue->pagesize;
	if (queue->current_q_offset > queue->queue_length) {
		queue->current_q_offset -= queue->pagesize;
		ret = NULL;
	}
	if (((u64)ret) % queue->pagesize) {
		FUNC0("ERROR!! not at PAGE-Boundary");
		return NULL;
	}
	return ret;
}