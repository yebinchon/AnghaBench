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
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_REGION_DEACTIVATE ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  ev_io_space_region_setup ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC2(acpi_handle handle,
			      u32 function,
			      void *handler_context, void **region_context)
{
	FUNC0(ev_io_space_region_setup);

	if (function == ACPI_REGION_DEACTIVATE) {
		*region_context = NULL;
	} else {
		*region_context = handler_context;
	}

	FUNC1(AE_OK);
}