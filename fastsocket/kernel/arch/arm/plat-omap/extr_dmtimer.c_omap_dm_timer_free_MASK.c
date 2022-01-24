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
struct omap_dm_timer {scalar_t__ reserved; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_dm_timer*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_dm_timer*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_dm_timer*) ; 

void FUNC4(struct omap_dm_timer *timer)
{
	FUNC2(timer);
	FUNC3(timer);
	FUNC1(timer);

	FUNC0(!timer->reserved);
	timer->reserved = 0;
}