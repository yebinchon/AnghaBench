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
typedef  int uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int MAX_BLACKFIN_GPTIMERS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__** group_regs ; 
 int /*<<< orphan*/ * trun_mask ; 

void FUNC3(uint16_t mask)
{
	int i;
	FUNC2(mask);
	for (i = 0; i < MAX_BLACKFIN_GPTIMERS; ++i)
		if (mask & (1 << i))
			group_regs[FUNC0(i)]->status |= trun_mask[i];
	FUNC1();
}