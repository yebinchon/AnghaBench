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
typedef  int cycle_t ;

/* Variables and functions */
 scalar_t__ HW_TIMROT_TIMCOUNT1 ; 
 scalar_t__ REGS_TIMROT_BASE ; 
 int FUNC0 (scalar_t__) ; 

__attribute__((used)) static cycle_t FUNC1(struct clocksource *cs)
{
	return ~((FUNC0(REGS_TIMROT_BASE + HW_TIMROT_TIMCOUNT1)
				& 0xFFFF0000) >> 16);
}