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
struct sm501_devdata {scalar_t__ in_suspend; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 

__attribute__((used)) static inline void FUNC2(struct sm501_devdata *sm, unsigned int delay)
{
	/* during suspend/resume, we are currently not allowed to sleep,
	 * so change to using mdelay() instead of msleep() if we
	 * are in one of these paths */

	if (sm->in_suspend)
		FUNC0(delay);
	else
		FUNC1(delay);
}