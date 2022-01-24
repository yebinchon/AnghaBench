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
struct debug_store {scalar_t__ pebs_buffer_base; } ;
struct TYPE_4__ {struct debug_store* ds; } ;
struct TYPE_3__ {int /*<<< orphan*/  pebs; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 TYPE_2__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__ x86_pmu ; 

__attribute__((used)) static void FUNC2(int cpu)
{
	struct debug_store *ds = FUNC1(cpu_hw_events, cpu).ds;

	if (!ds || !x86_pmu.pebs)
		return;

	FUNC0((void *)(unsigned long)ds->pebs_buffer_base);
	ds->pebs_buffer_base = 0;
}