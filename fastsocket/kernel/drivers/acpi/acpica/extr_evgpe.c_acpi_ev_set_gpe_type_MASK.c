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
typedef  int u8 ;
struct acpi_gpe_event_info {int flags; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ACPI_GPE_TYPE_MASK ; 
#define  ACPI_GPE_TYPE_RUNTIME 130 
#define  ACPI_GPE_TYPE_WAKE 129 
#define  ACPI_GPE_TYPE_WAKE_RUN 128 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_gpe_event_info*) ; 
 int /*<<< orphan*/  ev_set_gpe_type ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC3(struct acpi_gpe_event_info *gpe_event_info, u8 type)
{
	acpi_status status;

	FUNC0(ev_set_gpe_type);

	/* Validate type and update register enable masks */

	switch (type) {
	case ACPI_GPE_TYPE_WAKE:
	case ACPI_GPE_TYPE_RUNTIME:
	case ACPI_GPE_TYPE_WAKE_RUN:
		break;

	default:
		FUNC2(AE_BAD_PARAMETER);
	}

	/* Disable the GPE if currently enabled */

	status = FUNC1(gpe_event_info);

	/* Clear the type bits and insert the new Type */

	gpe_event_info->flags &= ~ACPI_GPE_TYPE_MASK;
	gpe_event_info->flags |= type;
	FUNC2(status);
}