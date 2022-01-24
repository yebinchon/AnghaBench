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
struct acpi_gpe_event_info {int flags; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_GPE_DISABLE ; 
 int /*<<< orphan*/  ACPI_GPE_RUN_ENABLED ; 
 int ACPI_GPE_TYPE_MASK ; 
#define  ACPI_GPE_TYPE_RUNTIME 130 
#define  ACPI_GPE_TYPE_WAKE 129 
#define  ACPI_GPE_TYPE_WAKE_RUN 128 
 int /*<<< orphan*/  ACPI_GPE_WAKE_ENABLED ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_gpe_event_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_gpe_event_info*) ; 
 int /*<<< orphan*/  ev_disable_gpe ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

acpi_status FUNC6(struct acpi_gpe_event_info *gpe_event_info)
{
	acpi_status status;

	FUNC2(ev_disable_gpe);

	/* Make sure HW enable masks are updated */

	status =
	    FUNC3(gpe_event_info, ACPI_GPE_DISABLE);
	if (FUNC1(status)) {
		FUNC5(status);
	}

	/* Clear the appropriate enabled flags for this GPE */

	switch (gpe_event_info->flags & ACPI_GPE_TYPE_MASK) {
	case ACPI_GPE_TYPE_WAKE:
		FUNC0(gpe_event_info->flags, ACPI_GPE_WAKE_ENABLED);
		break;

	case ACPI_GPE_TYPE_WAKE_RUN:
		FUNC0(gpe_event_info->flags, ACPI_GPE_WAKE_ENABLED);

		/* fallthrough */

	case ACPI_GPE_TYPE_RUNTIME:

		/* Disable the requested runtime GPE */

		FUNC0(gpe_event_info->flags, ACPI_GPE_RUN_ENABLED);
		break;

	default:
		break;
	}

	/*
	 * Even if we don't know the GPE type, make sure that we always
	 * disable it. low_disable_gpe will just clear the enable bit for this
	 * GPE and write it. It will not write out the current GPE enable mask,
	 * since this may inadvertently enable GPEs too early, if a rogue GPE has
	 * come in during ACPICA initialization - possibly as a result of AML or
	 * other code that has enabled the GPE.
	 */
	status = FUNC4(gpe_event_info);
	FUNC5(status);
}