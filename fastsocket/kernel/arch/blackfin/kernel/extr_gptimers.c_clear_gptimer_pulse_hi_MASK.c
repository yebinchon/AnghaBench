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
struct TYPE_2__ {int /*<<< orphan*/  config; } ;

/* Variables and functions */
 int MAX_BLACKFIN_GPTIMERS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  TIMER_PULSE_HI ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__** timer_regs ; 

void FUNC2(int timer_id)
{
	FUNC1(timer_id < MAX_BLACKFIN_GPTIMERS);
	timer_regs[timer_id]->config &= ~TIMER_PULSE_HI;
	FUNC0();
}