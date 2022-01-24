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
struct adb_request {int /*<<< orphan*/  complete; } ;

/* Variables and functions */
 int PMU_INT_ADB ; 
 int PMU_INT_TICK ; 
 scalar_t__ PMU_KEYLARGO_BASED ; 
 int /*<<< orphan*/  PMU_RESET ; 
 int /*<<< orphan*/  PMU_SET_INTR_MASK ; 
 int drop_interrupts ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ pmu_kind ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct adb_request*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (struct adb_request*) ; 
 int /*<<< orphan*/ * via ; 

void
FUNC4(void)
{
	struct adb_request req;

	if (via == NULL)
		return;

	FUNC0();

	drop_interrupts = 1;
	
	if (pmu_kind != PMU_KEYLARGO_BASED) {
		FUNC2(&req, NULL, 2, PMU_SET_INTR_MASK, PMU_INT_ADB |
						PMU_INT_TICK );
		while(!req.complete)
			FUNC1();
	}

	FUNC2(&req, NULL, 1, PMU_RESET);
	FUNC3(&req);
	for (;;)
		;
}