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
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/ * acpi_event_handler ;
struct TYPE_2__ {int /*<<< orphan*/ * context; int /*<<< orphan*/ * handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t ACPI_EVENT_MAX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  (*) (size_t,int /*<<< orphan*/ *,void*)) ; 
 int /*<<< orphan*/  ACPI_MTX_EVENTS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_ALREADY_EXISTS ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (size_t,int /*<<< orphan*/ ) ; 
 TYPE_1__* acpi_gbl_fixed_event_handlers ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC10(u32 event,
				 acpi_event_handler handler, void *context)
{
	acpi_status status;

	FUNC2(acpi_install_fixed_event_handler);

	/* Parameter validation */

	if (event > ACPI_EVENT_MAX) {
		FUNC9(AE_BAD_PARAMETER);
	}

	status = FUNC7(ACPI_MTX_EVENTS);
	if (FUNC1(status)) {
		FUNC9(status);
	}

	/* Don't allow two handlers. */

	if (NULL != acpi_gbl_fixed_event_handlers[event].handler) {
		status = AE_ALREADY_EXISTS;
		goto cleanup;
	}

	/* Install the handler before enabling the event */

	acpi_gbl_fixed_event_handlers[event].handler = handler;
	acpi_gbl_fixed_event_handlers[event].context = context;

	status = FUNC5(event);
	if (FUNC3(status))
		status = FUNC6(event, 0);
	if (FUNC1(status)) {
		FUNC4((AE_INFO, "Could not enable fixed event %X",
			      event));

		/* Remove the handler */

		acpi_gbl_fixed_event_handlers[event].handler = NULL;
		acpi_gbl_fixed_event_handlers[event].context = NULL;
	} else {
		FUNC0(*(ACPI_DB_INFO,
				  "Enabled fixed event %X, Handler=%p\n", event,
				  handler));
	}

      cleanup:
	(void)FUNC8(ACPI_MTX_EVENTS);
	FUNC9(status);
}