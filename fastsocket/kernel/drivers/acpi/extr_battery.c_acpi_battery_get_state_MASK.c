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
struct acpi_buffer {int /*<<< orphan*/  pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
struct acpi_battery {int quirks; int rate_now; scalar_t__ update_time; int /*<<< orphan*/  lock; TYPE_1__* device; } ;
typedef  int /*<<< orphan*/  s16 ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int QUIRK_SIGNED16_CURRENT ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_battery*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,struct acpi_buffer*) ; 
 int /*<<< orphan*/  cache_time ; 
 int FUNC6 (struct acpi_battery*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  state_offsets ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct acpi_battery *battery)
{
	int result = 0;
	acpi_status status = 0;
	struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, NULL };

	if (!FUNC4(battery))
		return 0;

	if (battery->update_time &&
	    FUNC11(jiffies, battery->update_time +
			FUNC8(cache_time)))
		return 0;

	FUNC9(&battery->lock);
	status = FUNC5(battery->device->handle, "_BST",
				      NULL, &buffer);
	FUNC10(&battery->lock);

	if (FUNC1(status)) {
		FUNC0((AE_INFO, status, "Evaluating _BST"));
		return -ENODEV;
	}

	result = FUNC6(battery, buffer.pointer,
				 state_offsets, FUNC2(state_offsets));
	battery->update_time = jiffies;
	FUNC7(buffer.pointer);

	if ((battery->quirks & QUIRK_SIGNED16_CURRENT) &&
	    battery->rate_now != -1)
		battery->rate_now = FUNC3((s16)battery->rate_now);

	return result;
}