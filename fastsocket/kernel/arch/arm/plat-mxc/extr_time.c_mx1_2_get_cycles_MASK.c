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
 scalar_t__ MX1_2_TCN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ timer_base ; 

__attribute__((used)) static cycle_t FUNC1(struct clocksource *cs)
{
	return FUNC0(timer_base + MX1_2_TCN);
}