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
typedef  int /*<<< orphan*/  u32 ;
struct thermal_zone_device {int /*<<< orphan*/  device; } ;
typedef  scalar_t__ acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ AE_ERROR ; 
 scalar_t__ AE_NOT_FOUND ; 
 scalar_t__ AE_OK ; 
 int /*<<< orphan*/  GET_AUX0 ; 
 int /*<<< orphan*/  GET_AUX1 ; 
 int /*<<< orphan*/  SET_AUX0 ; 
 int /*<<< orphan*/  SET_AUX1 ; 
 int FUNC1 (int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  aux0_show ; 
 int /*<<< orphan*/ * aux0_store ; 
 int /*<<< orphan*/  aux1_show ; 
 int /*<<< orphan*/ * aux1_store ; 
 int /*<<< orphan*/  bios_enabled_show ; 
 int FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static acpi_status FUNC4(acpi_handle handle, u32 lvl,
						void *context, void **rv)
{
	acpi_status status;
	acpi_handle dummy;
	struct thermal_zone_device *thermal;
	int result;

	result = FUNC1(handle, (void **)&thermal);
	if (result)
		return 0;

	/* _TZ must have the AUX0/1 methods */
	status = FUNC2(handle, GET_AUX0, &dummy);
	if (FUNC0(status))
		goto not_found;

	status = FUNC2(handle, SET_AUX0, &dummy);
	if (FUNC0(status))
		goto not_found;

	result = FUNC3("aux0", 0644,
						aux0_show, aux0_store,
						&thermal->device, handle);
	if (result)
		return AE_ERROR;

	status = FUNC2(handle, GET_AUX1, &dummy);
	if (FUNC0(status))
		goto not_found;

	status = FUNC2(handle, SET_AUX1, &dummy);
	if (FUNC0(status))
		goto not_found;

	result = FUNC3("aux1", 0644,
						aux1_show, aux1_store,
						&thermal->device, handle);
	if (result)
		return AE_ERROR;

	/*
	 * create the "dabney_enabled" attribute which means the user app
	 * should be loaded or not
	 */

	result = FUNC3("bios_enabled", 0444,
						bios_enabled_show, NULL,
						&thermal->device, handle);
	if (result)
		return AE_ERROR;

 not_found:
	if (status == AE_NOT_FOUND)
		return AE_OK;
	else
		return status;
}