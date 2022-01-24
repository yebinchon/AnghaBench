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
struct request_queue {int /*<<< orphan*/  (* unplug_fn ) (struct request_queue*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 

void FUNC2(struct request_queue *q)
{
	/*
	 * devices don't necessarily have an ->unplug_fn defined
	 */
	if (q->unplug_fn) {
		FUNC1(q);
		q->unplug_fn(q);
	}
}