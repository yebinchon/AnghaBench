#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int* int_mask; int int_enable; int* cnt_ovf; } ;
struct TYPE_3__ {int /*<<< orphan*/  ovf; } ;

/* Variables and functions */
 int CCNT ; 
 int PMN1 ; 
 int PMU_ENABLE ; 
 TYPE_2__* pmu ; 
 int FUNC0 () ; 
 TYPE_1__* results ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void inline FUNC2(void)
{
	int i;
	u32 pmnc = FUNC0();

	/* NOTE: there's an A stepping errata that states if an overflow */
	/*       bit already exists and another occurs, the previous     */
	/*       Overflow bit gets cleared. There's no workaround.	 */
	/*	 Fixed in B stepping or later			 	 */

	/* Write the value back to clear the overflow flags. Overflow */
	/* flags remain in pmnc for use below */
	FUNC1(pmnc & ~PMU_ENABLE);

	for (i = CCNT; i <= PMN1; i++) {
		if (!(pmu->int_mask[i] & pmu->int_enable))
			continue;

		if (pmnc & pmu->cnt_ovf[i])
			results[i].ovf++;
	}
}