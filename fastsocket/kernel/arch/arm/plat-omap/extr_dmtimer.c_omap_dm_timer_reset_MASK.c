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
struct omap_dm_timer {int posted; } ;

/* Variables and functions */
 int OMAP_TIMER_CTRL_POSTED ; 
 int /*<<< orphan*/  OMAP_TIMER_IF_CTRL_REG ; 
 int /*<<< orphan*/  OMAP_TIMER_OCP_CFG_REG ; 
 int /*<<< orphan*/  OMAP_TIMER_SRC_32_KHZ ; 
 scalar_t__ FUNC0 () ; 
 struct omap_dm_timer* dm_timers ; 
 int FUNC1 (struct omap_dm_timer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_dm_timer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_dm_timer*) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_dm_timer*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct omap_dm_timer *timer)
{
	u32 l;

	if (!FUNC0() || timer != &dm_timers[0]) {
		FUNC4(timer, OMAP_TIMER_IF_CTRL_REG, 0x06);
		FUNC3(timer);
	}
	FUNC2(timer, OMAP_TIMER_SRC_32_KHZ);

	l = FUNC1(timer, OMAP_TIMER_OCP_CFG_REG);
	l |= 0x02 << 3;  /* Set to smart-idle mode */
	l |= 0x2 << 8;   /* Set clock activity to perserve f-clock on idle */

	/*
	 * Enable wake-up on OMAP2 CPUs.
	 */
	if (FUNC0())
		l |= 1 << 2;
	FUNC4(timer, OMAP_TIMER_OCP_CFG_REG, l);

	/* Match hardware reset default of posted mode */
	FUNC4(timer, OMAP_TIMER_IF_CTRL_REG,
			OMAP_TIMER_CTRL_POSTED);
	timer->posted = 1;
}