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
typedef  scalar_t__ u64 ;
struct debug_store {scalar_t__ pebs_buffer_base; scalar_t__ pebs_interrupt_threshold; scalar_t__ pebs_absolute_maximum; scalar_t__ pebs_index; } ;
struct TYPE_4__ {struct debug_store* ds; } ;
struct TYPE_3__ {int pebs_record_size; int /*<<< orphan*/  pebs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int PEBS_BUFFER_SIZE ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int FUNC0 (int) ; 
 void* FUNC1 (int,int,int) ; 
 TYPE_2__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int) ; 
 TYPE_1__ x86_pmu ; 

__attribute__((used)) static int FUNC4(int cpu)
{
	struct debug_store *ds = FUNC2(cpu_hw_events, cpu).ds;
	int node = FUNC0(cpu);
	int max, thresh = 1; /* always use a single PEBS record */
	void *buffer;

	if (!x86_pmu.pebs)
		return 0;

	buffer = FUNC1(PEBS_BUFFER_SIZE, GFP_KERNEL | __GFP_ZERO, node);
	if (FUNC3(!buffer))
		return -ENOMEM;

	max = PEBS_BUFFER_SIZE / x86_pmu.pebs_record_size;

	ds->pebs_buffer_base = (u64)(unsigned long)buffer;
	ds->pebs_index = ds->pebs_buffer_base;
	ds->pebs_absolute_maximum = ds->pebs_buffer_base +
		max * x86_pmu.pebs_record_size;

	ds->pebs_interrupt_threshold = ds->pebs_buffer_base +
		thresh * x86_pmu.pebs_record_size;

	return 0;
}