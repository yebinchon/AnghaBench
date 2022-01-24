#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct clocksource {int dummy; } ;
typedef  scalar_t__ cycle_t ;
struct TYPE_2__ {scalar_t__ cycle_last; } ;

/* Variables and functions */
 TYPE_1__ clocksource_tsc ; 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static cycle_t FUNC1(struct clocksource *cs)
{
	cycle_t ret = (cycle_t)FUNC0();

	return ret >= clocksource_tsc.cycle_last ?
		ret : clocksource_tsc.cycle_last;
}