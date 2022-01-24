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
struct TYPE_2__ {int status; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int MAX_BLACKFIN_GPTIMERS ; 
 TYPE_1__** group_regs ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int* timil_mask ; 

int FUNC2(int timer_id)
{
	FUNC1(timer_id < MAX_BLACKFIN_GPTIMERS);
	return !!(group_regs[FUNC0(timer_id)]->status & timil_mask[timer_id]);
}