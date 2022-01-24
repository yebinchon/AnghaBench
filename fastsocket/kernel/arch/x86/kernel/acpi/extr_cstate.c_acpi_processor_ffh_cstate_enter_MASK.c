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
struct cstate_entry {TYPE_1__* states; } ;
struct acpi_processor_cx {size_t index; } ;
struct TYPE_2__ {int /*<<< orphan*/  ecx; int /*<<< orphan*/  eax; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_cstate_entry ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cstate_entry* FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC2 () ; 

void FUNC3(struct acpi_processor_cx *cx)
{
	unsigned int cpu = FUNC2();
	struct cstate_entry *percpu_entry;

	percpu_entry = FUNC1(cpu_cstate_entry, cpu);
	FUNC0(percpu_entry->states[cx->index].eax,
	                      percpu_entry->states[cx->index].ecx);
}