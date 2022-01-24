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
typedef  scalar_t__ u64 ;
struct nouveau_timer {scalar_t__ (* read ) (struct nouveau_timer*) ;} ;

/* Variables and functions */
 struct nouveau_timer* FUNC0 (void*) ; 
 scalar_t__ FUNC1 (struct nouveau_timer*) ; 
 scalar_t__ FUNC2 (struct nouveau_timer*) ; 

bool
FUNC3(void *obj, u64 nsec, bool (*func)(void *), void *data)
{
	struct nouveau_timer *ptimer = FUNC0(obj);
	u64 time0;

	time0 = ptimer->read(ptimer);
	do {
		if (func(data) == true)
			return true;
	} while (ptimer->read(ptimer) - time0 < nsec);

	return false;
}