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
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {scalar_t__ id; } ;
struct TYPE_3__ {int /*<<< orphan*/  ovf; scalar_t__ reset_counter; } ;

/* Variables and functions */
 int CCNT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int MAX_COUNTERS ; 
 int PMU_ENABLE ; 
 scalar_t__ PMU_XSC1 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__* pmu ; 
 int FUNC4 () ; 
 TYPE_1__* results ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *arg)
{
	int i;
	u32 pmnc;

	if (pmu->id == PMU_XSC1)
		FUNC0();
	else
		FUNC1();

	for (i = CCNT; i < MAX_COUNTERS; i++) {
		if (!results[i].ovf)
			continue;

		FUNC5(i, -(u32)results[i].reset_counter);
		FUNC3(FUNC2(), i);
		results[i].ovf--;
	}

	pmnc = FUNC4() | PMU_ENABLE;
	FUNC6(pmnc);

	return IRQ_HANDLED;
}