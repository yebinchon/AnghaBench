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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  acpi_handle ;
typedef  int /*<<< orphan*/  acpi_event_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_NOT_ISR ; 
 scalar_t__ ACPI_NUM_FIXED_EVENTS ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NOT_FOUND ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ num_gpes ; 

__attribute__((used)) static int FUNC4(u32 index, acpi_event_status *status, acpi_handle *handle)
{
	int result = 0;

	if (index >= num_gpes + ACPI_NUM_FIXED_EVENTS)
		goto end;

	if (index < num_gpes) {
		result = FUNC2(index, handle);
		if (result) {
			FUNC0((AE_INFO, AE_NOT_FOUND,
				"Invalid GPE 0x%x\n", index));
			goto end;
		}
		result = FUNC3(*handle, index,
						ACPI_NOT_ISR, status);
	} else if (index < (num_gpes + ACPI_NUM_FIXED_EVENTS))
		result = FUNC1(index - num_gpes, status);

end:
	return result;
}