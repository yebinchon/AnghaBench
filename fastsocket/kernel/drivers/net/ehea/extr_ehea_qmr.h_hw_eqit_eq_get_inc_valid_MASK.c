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
typedef  int u8 ;
typedef  int u32 ;
struct hw_queue {int toggle_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hw_queue*) ; 
 void* FUNC1 (struct hw_queue*) ; 

__attribute__((used)) static inline void *FUNC2(struct hw_queue *queue)
{
	void *retvalue = FUNC1(queue);
	u32 qe = *(u8 *)retvalue;
	if ((qe >> 7) == (queue->toggle_state & 1))
		FUNC0(queue);
	else
		retvalue = NULL;
	return retvalue;
}