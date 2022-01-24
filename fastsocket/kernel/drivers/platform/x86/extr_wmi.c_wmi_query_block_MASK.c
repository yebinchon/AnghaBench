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
struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; void* type; } ;
typedef  scalar_t__ u8 ;
struct guid_block {scalar_t__ instance_count; int flags; int /*<<< orphan*/  object_id; } ;
struct wmi_block {int /*<<< orphan*/  handle; struct guid_block gblock; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
struct acpi_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* ACPI_TYPE_INTEGER ; 
 int ACPI_WMI_EVENT ; 
 int ACPI_WMI_EXPENSIVE ; 
 int ACPI_WMI_METHOD ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct acpi_object_list*,struct acpi_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,struct wmi_block**) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 

acpi_status FUNC6(const char *guid_string, u8 instance,
struct acpi_buffer *out)
{
	struct guid_block *block = NULL;
	struct wmi_block *wblock = NULL;
	acpi_handle handle, wc_handle;
	acpi_status status, wc_status = AE_ERROR;
	struct acpi_object_list input, wc_input;
	union acpi_object wc_params[1], wq_params[1];
	char method[5];
	char wc_method[5] = "WC";

	if (!guid_string || !out)
		return AE_BAD_PARAMETER;

	if (!FUNC3(guid_string, &wblock))
		return AE_ERROR;

	block = &wblock->gblock;
	handle = wblock->handle;

	if (block->instance_count < instance)
		return AE_BAD_PARAMETER;

	/* Check GUID is a data block */
	if (block->flags & (ACPI_WMI_EVENT | ACPI_WMI_METHOD))
		return AE_ERROR;

	input.count = 1;
	input.pointer = wq_params;
	wq_params[0].type = ACPI_TYPE_INTEGER;
	wq_params[0].integer.value = instance;

	/*
	 * If ACPI_WMI_EXPENSIVE, call the relevant WCxx method first to
	 * enable collection.
	 */
	if (block->flags & ACPI_WMI_EXPENSIVE) {
		wc_input.count = 1;
		wc_input.pointer = wc_params;
		wc_params[0].type = ACPI_TYPE_INTEGER;
		wc_params[0].integer.value = 1;

		FUNC5(wc_method, block->object_id, 2);

		/*
		 * Some GUIDs break the specification by declaring themselves
		 * expensive, but have no corresponding WCxx method. So we
		 * should not fail if this happens.
		 */
		wc_status = FUNC2(handle, wc_method, &wc_handle);
		if (FUNC0(wc_status))
			wc_status = FUNC1(handle, wc_method,
				&wc_input, NULL);
	}

	FUNC4(method, "WQ");
	FUNC5(method, block->object_id, 2);

	status = FUNC1(handle, method, &input, out);

	/*
	 * If ACPI_WMI_EXPENSIVE, call the relevant WCxx method, even if
	 * the WQxx method failed - we should disable collection anyway.
	 */
	if ((block->flags & ACPI_WMI_EXPENSIVE) && FUNC0(wc_status)) {
		wc_params[0].integer.value = 0;
		status = FUNC1(handle,
		wc_method, &wc_input, NULL);
	}

	return status;
}