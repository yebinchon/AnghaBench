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
struct vtimer_list {scalar_t__ interval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vtimer_list*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtimer_list*) ; 

void FUNC2(void *new)
{
	struct vtimer_list *timer;

	timer = (struct vtimer_list *)new;
	FUNC1(timer);
	timer->interval = 0;
	FUNC0(timer);
}