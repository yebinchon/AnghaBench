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
typedef  int u32 ;
struct omap_dm_timer {scalar_t__ io_base; scalar_t__ posted; } ;

/* Variables and functions */
 int OMAP_TIMER_WRITE_PEND_REG ; 
 int WPSHIFT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct omap_dm_timer *timer, u32 reg,
						u32 value)
{
	if (timer->posted)
		while (FUNC1(timer->io_base + (OMAP_TIMER_WRITE_PEND_REG & 0xff))
				& (reg >> WPSHIFT))
			FUNC0();
	FUNC2(value, timer->io_base + (reg & 0xff));
}