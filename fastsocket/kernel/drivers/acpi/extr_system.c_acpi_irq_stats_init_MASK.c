#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct kobj_attribute {int dummy; } ;
struct event_counter {int dummy; } ;
struct attribute {int dummy; } ;
struct TYPE_7__ {char* name; int mode; } ;
struct TYPE_6__ {TYPE_4__ attr; int /*<<< orphan*/  store; int /*<<< orphan*/  show; } ;
struct TYPE_5__ {TYPE_4__** attrs; } ;

/* Variables and functions */
 int ACPI_EVENT_GLOBAL ; 
 int ACPI_EVENT_PMTIMER ; 
 int ACPI_EVENT_POWER_BUTTON ; 
 int ACPI_EVENT_RTC ; 
 int ACPI_EVENT_SLEEP_BUTTON ; 
 int ACPI_NUM_FIXED_EVENTS ; 
 int COUNT_ERROR ; 
 int COUNT_GPE ; 
 int COUNT_SCI ; 
 int COUNT_SCI_NOT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NUM_COUNTERS_EXTRA ; 
 int acpi_current_gpe_count ; 
 int /*<<< orphan*/  acpi_kobj ; 
 TYPE_4__** all_attrs ; 
 int /*<<< orphan*/ * all_counters ; 
 TYPE_3__* counter_attrs ; 
 int /*<<< orphan*/  counter_set ; 
 int /*<<< orphan*/  counter_show ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ interrupt_stats_attr_group ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int num_counters ; 
 int num_gpes ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void FUNC6(void)
{
	int i;

	if (all_counters)
		return;

	num_gpes = acpi_current_gpe_count;
	num_counters = num_gpes + ACPI_NUM_FIXED_EVENTS + NUM_COUNTERS_EXTRA;

	all_attrs = FUNC1(sizeof(struct attribute *) * (num_counters + 1),
			GFP_KERNEL);
	if (all_attrs == NULL)
		return;

	all_counters = FUNC1(sizeof(struct event_counter) * (num_counters),
				GFP_KERNEL);
	if (all_counters == NULL)
		goto fail;

	counter_attrs = FUNC1(sizeof(struct kobj_attribute) * (num_counters),
			GFP_KERNEL);
	if (counter_attrs == NULL)
		goto fail;

	for (i = 0; i < num_counters; ++i) {
		char buffer[12];
		char *name;

		if (i < num_gpes)
			FUNC2(buffer, "gpe%02X", i);
		else if (i == num_gpes + ACPI_EVENT_PMTIMER)
			FUNC2(buffer, "ff_pmtimer");
		else if (i == num_gpes + ACPI_EVENT_GLOBAL)
			FUNC2(buffer, "ff_gbl_lock");
		else if (i == num_gpes + ACPI_EVENT_POWER_BUTTON)
			FUNC2(buffer, "ff_pwr_btn");
		else if (i == num_gpes + ACPI_EVENT_SLEEP_BUTTON)
			FUNC2(buffer, "ff_slp_btn");
		else if (i == num_gpes + ACPI_EVENT_RTC)
			FUNC2(buffer, "ff_rt_clk");
		else if (i == num_gpes + ACPI_NUM_FIXED_EVENTS + COUNT_GPE)
			FUNC2(buffer, "gpe_all");
		else if (i == num_gpes + ACPI_NUM_FIXED_EVENTS + COUNT_SCI)
			FUNC2(buffer, "sci");
		else if (i == num_gpes + ACPI_NUM_FIXED_EVENTS + COUNT_SCI_NOT)
			FUNC2(buffer, "sci_not");
		else if (i == num_gpes + ACPI_NUM_FIXED_EVENTS + COUNT_ERROR)
			FUNC2(buffer, "error");
		else
			FUNC2(buffer, "bug%02X", i);

		name = FUNC1(FUNC3(buffer) + 1, GFP_KERNEL);
		if (name == NULL)
			goto fail;
		FUNC4(name, buffer, FUNC3(buffer) + 1);

		counter_attrs[i].attr.name = name;
		counter_attrs[i].attr.mode = 0644;
		counter_attrs[i].show = counter_show;
		counter_attrs[i].store = counter_set;

		all_attrs[i] = &counter_attrs[i].attr;
	}

	interrupt_stats_attr_group.attrs = all_attrs;
	if (!FUNC5(acpi_kobj, &interrupt_stats_attr_group))
		return;

fail:
	FUNC0();
	return;
}