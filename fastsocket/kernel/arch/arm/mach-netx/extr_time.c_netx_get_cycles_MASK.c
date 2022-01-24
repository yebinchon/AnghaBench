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
struct clocksource {int dummy; } ;
typedef  int /*<<< orphan*/  cycle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIMER_CLOCKSOURCE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

cycle_t FUNC2(struct clocksource *cs)
{
	return FUNC1(FUNC0(TIMER_CLOCKSOURCE));
}