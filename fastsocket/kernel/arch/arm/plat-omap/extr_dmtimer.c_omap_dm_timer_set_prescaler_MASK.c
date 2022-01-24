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
struct omap_dm_timer {int dummy; } ;

/* Variables and functions */
 int OMAP_TIMER_CTRL_PRE ; 
 int /*<<< orphan*/  OMAP_TIMER_CTRL_REG ; 
 int FUNC0 (struct omap_dm_timer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_dm_timer*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct omap_dm_timer *timer, int prescaler)
{
	u32 l;

	l = FUNC0(timer, OMAP_TIMER_CTRL_REG);
	l &= ~(OMAP_TIMER_CTRL_PRE | (0x07 << 2));
	if (prescaler >= 0x00 && prescaler <= 0x07) {
		l |= OMAP_TIMER_CTRL_PRE;
		l |= prescaler << 2;
	}
	FUNC1(timer, OMAP_TIMER_CTRL_REG, l);
}