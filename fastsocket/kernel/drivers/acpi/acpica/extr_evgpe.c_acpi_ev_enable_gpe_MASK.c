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
typedef  int /*<<< orphan*/  u8 ;
struct acpi_gpe_event_info {int flags; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_GPE_ENABLE ; 
 int /*<<< orphan*/  ACPI_GPE_RUN_ENABLED ; 
 int ACPI_GPE_TYPE_MASK ; 
#define  ACPI_GPE_TYPE_RUNTIME 130 
#define  ACPI_GPE_TYPE_WAKE 129 
#define  ACPI_GPE_TYPE_WAKE_RUN 128 
 int /*<<< orphan*/  ACPI_GPE_WAKE_ENABLED ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_gpe_event_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_gpe_event_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_gpe_event_info*) ; 
 int /*<<< orphan*/  ev_enable_gpe ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC7(struct acpi_gpe_event_info *gpe_event_info,
		   u8 write_to_hardware)
{
	acpi_status status;

	FUNC1(ev_enable_gpe);

	/* Make sure HW enable masks are updated */

	status =
	    FUNC3(gpe_event_info, ACPI_GPE_ENABLE);
	if (FUNC0(status)) {
		FUNC6(status);
	}

	/* Mark wake-enabled or HW enable, or both */

	switch (gpe_event_info->flags & ACPI_GPE_TYPE_MASK) {
	case ACPI_GPE_TYPE_WAKE:

		FUNC2(gpe_event_info->flags, ACPI_GPE_WAKE_ENABLED);
		break;

	case ACPI_GPE_TYPE_WAKE_RUN:

		FUNC2(gpe_event_info->flags, ACPI_GPE_WAKE_ENABLED);

		/*lint -fallthrough */

	case ACPI_GPE_TYPE_RUNTIME:

		FUNC2(gpe_event_info->flags, ACPI_GPE_RUN_ENABLED);

		if (write_to_hardware) {

			/* Clear the GPE (of stale events), then enable it */

			status = FUNC4(gpe_event_info);
			if (FUNC0(status)) {
				FUNC6(status);
			}

			/* Enable the requested runtime GPE */

			status = FUNC5(gpe_event_info);
		}
		break;

	default:
		FUNC6(AE_BAD_PARAMETER);
	}

	FUNC6(AE_OK);
}