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
typedef  unsigned int u32 ;
struct omap_dm_timer {int dummy; } ;

/* Variables and functions */
 unsigned int OMAP_TIMER_CTRL_AR ; 
 int /*<<< orphan*/  OMAP_TIMER_CTRL_REG ; 
 int /*<<< orphan*/  OMAP_TIMER_LOAD_REG ; 
 int /*<<< orphan*/  OMAP_TIMER_TRIGGER_REG ; 
 unsigned int FUNC0 (struct omap_dm_timer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_dm_timer*,int /*<<< orphan*/ ,unsigned int) ; 

void FUNC2(struct omap_dm_timer *timer, int autoreload,
			    unsigned int load)
{
	u32 l;

	l = FUNC0(timer, OMAP_TIMER_CTRL_REG);
	if (autoreload)
		l |= OMAP_TIMER_CTRL_AR;
	else
		l &= ~OMAP_TIMER_CTRL_AR;
	FUNC1(timer, OMAP_TIMER_CTRL_REG, l);
	FUNC1(timer, OMAP_TIMER_LOAD_REG, load);

	FUNC1(timer, OMAP_TIMER_TRIGGER_REG, 0);
}