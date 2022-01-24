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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int /*<<< orphan*/  (* read ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 TYPE_1__* pcr_ops ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  sparc_pmu ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(void)
{
	unsigned long flags;
	u64 pcr, pic;
	int cpu;

	if (!sparc_pmu)
		return;

	FUNC1(flags);

	cpu = FUNC4();

	pcr = pcr_ops->read();
	FUNC3(pic);

	FUNC2("\n");
	FUNC2("CPU#%d: PCR[%016llx] PIC[%016llx]\n",
		cpu, pcr, pic);

	FUNC0(flags);
}