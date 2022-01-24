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
struct hw_queue {scalar_t__ current_q_offset; scalar_t__ pagesize; scalar_t__ queue_length; } ;

/* Variables and functions */
 int EHEA_PAGESIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (struct hw_queue*) ; 

__attribute__((used)) static void *FUNC2(struct hw_queue *queue)
{
	void *retvalue = FUNC1(queue);

	queue->current_q_offset += queue->pagesize;
	if (queue->current_q_offset > queue->queue_length) {
		queue->current_q_offset -= queue->pagesize;
		retvalue = NULL;
	} else if (((u64) retvalue) & (EHEA_PAGESIZE-1)) {
		FUNC0("not on pageboundary");
		retvalue = NULL;
	}
	return retvalue;
}