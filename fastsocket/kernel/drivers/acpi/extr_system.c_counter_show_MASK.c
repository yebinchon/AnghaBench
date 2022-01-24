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
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  acpi_handle ;
typedef  int acpi_event_status ;
struct TYPE_2__ {int count; } ;

/* Variables and functions */
 int ACPI_EVENT_FLAG_ENABLED ; 
 int ACPI_EVENT_FLAG_HANDLE ; 
 int ACPI_EVENT_FLAG_WAKE_ENABLED ; 
 size_t ACPI_NUM_FIXED_EVENTS ; 
 size_t COUNT_GPE ; 
 size_t COUNT_SCI ; 
 size_t COUNT_SCI_NOT ; 
 int acpi_gpe_count ; 
 int acpi_irq_handled ; 
 int acpi_irq_not_handled ; 
 TYPE_1__* all_counters ; 
 struct kobj_attribute* counter_attrs ; 
 int FUNC0 (int,int*,int /*<<< orphan*/ *) ; 
 size_t num_gpes ; 
 int FUNC1 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC2(struct kobject *kobj,
	struct kobj_attribute *attr, char *buf)
{
	int index = attr - counter_attrs;
	int size;
	acpi_handle handle;
	acpi_event_status status;
	int result = 0;

	all_counters[num_gpes + ACPI_NUM_FIXED_EVENTS + COUNT_SCI].count =
		acpi_irq_handled;
	all_counters[num_gpes + ACPI_NUM_FIXED_EVENTS + COUNT_SCI_NOT].count =
		acpi_irq_not_handled;
	all_counters[num_gpes + ACPI_NUM_FIXED_EVENTS + COUNT_GPE].count =
		acpi_gpe_count;

	size = FUNC1(buf, "%8d", all_counters[index].count);

	/* "gpe_all" or "sci" */
	if (index >= num_gpes + ACPI_NUM_FIXED_EVENTS)
		goto end;

	result = FUNC0(index, &status, &handle);
	if (result)
		goto end;

	if (!(status & ACPI_EVENT_FLAG_HANDLE))
		size += FUNC1(buf + size, "	invalid");
	else if (status & ACPI_EVENT_FLAG_ENABLED)
		size += FUNC1(buf + size, "	enabled");
	else if (status & ACPI_EVENT_FLAG_WAKE_ENABLED)
		size += FUNC1(buf + size, "	wake_enabled");
	else
		size += FUNC1(buf + size, "	disabled");

end:
	size += FUNC1(buf + size, "\n");
	return result ? result : size;
}