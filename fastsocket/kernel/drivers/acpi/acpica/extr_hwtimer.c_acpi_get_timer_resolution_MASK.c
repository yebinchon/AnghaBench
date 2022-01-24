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
typedef  int u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int ACPI_FADT_32BIT_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  (*) (int*)) ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_OK ; 
 TYPE_1__ acpi_gbl_FADT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

acpi_status FUNC2(u32 * resolution)
{
	FUNC0(acpi_get_timer_resolution);

	if (!resolution) {
		FUNC1(AE_BAD_PARAMETER);
	}

	if ((acpi_gbl_FADT.flags & ACPI_FADT_32BIT_TIMER) == 0) {
		*resolution = 24;
	} else {
		*resolution = 32;
	}

	FUNC1(AE_OK);
}