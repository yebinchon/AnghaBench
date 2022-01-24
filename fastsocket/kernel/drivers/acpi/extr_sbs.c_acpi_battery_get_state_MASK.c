#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct acpi_battery {scalar_t__ update_time; TYPE_1__* sbs; } ;
struct TYPE_5__ {int offset; int /*<<< orphan*/  command; int /*<<< orphan*/  mode; } ;
struct TYPE_4__ {int /*<<< orphan*/  hc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_SBS_BATTERY ; 
 int FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cache_time ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* state_readers ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct acpi_battery *battery)
{
	int i, result = 0;

	if (battery->update_time &&
	    FUNC3(jiffies, battery->update_time +
				FUNC2(cache_time)))
		return 0;
	for (i = 0; i < FUNC0(state_readers); ++i) {
		result = FUNC1(battery->sbs->hc,
					 state_readers[i].mode,
					 ACPI_SBS_BATTERY,
					 state_readers[i].command,
				         (u8 *)battery +
						state_readers[i].offset);
		if (result)
			goto end;
	}
      end:
	battery->update_time = jiffies;
	return result;
}