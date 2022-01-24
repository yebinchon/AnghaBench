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
struct omap_dm_timer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_TIMER_TRIGGER_REG ; 
 int /*<<< orphan*/  FUNC0 (struct omap_dm_timer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct omap_dm_timer *timer)
{
	FUNC0(timer, OMAP_TIMER_TRIGGER_REG, 0);
}