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
typedef  int /*<<< orphan*/  u32 ;
struct acpiphp_bridge {scalar_t__ type; int flags; int /*<<< orphan*/  handle; TYPE_1__* func; int /*<<< orphan*/  list; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_SYSTEM_NOTIFY ; 
 int /*<<< orphan*/  ACPI_TYPE_DEVICE ; 
 int BRIDGE_HAS_EJ0 ; 
 scalar_t__ BRIDGE_TYPE_HOST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpiphp_bridge*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpiphp_bridge*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bridge_list ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  handle_hotplug_event_bridge ; 
 int /*<<< orphan*/  handle_hotplug_event_func ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  register_slot ; 

__attribute__((used)) static void FUNC7(struct acpiphp_bridge *bridge)
{
	acpi_status status;

	/* must be added to the list prior to calling register_slot */
	FUNC5(&bridge->list, &bridge_list);

	/* register all slot objects under this bridge */
	status = FUNC3(ACPI_TYPE_DEVICE, bridge->handle, (u32)1,
				     register_slot, bridge, NULL);
	if (FUNC0(status)) {
		FUNC6(&bridge->list);
		return;
	}

	/* install notify handler */
	if (bridge->type != BRIDGE_TYPE_HOST) {
		if ((bridge->flags & BRIDGE_HAS_EJ0) && bridge->func) {
			status = FUNC2(bridge->func->handle,
						ACPI_SYSTEM_NOTIFY,
						handle_hotplug_event_func);
			if (FUNC0(status))
				FUNC4("failed to remove notify handler\n");
		}
		status = FUNC1(bridge->handle,
					     ACPI_SYSTEM_NOTIFY,
					     handle_hotplug_event_bridge,
					     bridge);

		if (FUNC0(status)) {
			FUNC4("failed to register interrupt notify handler\n");
		}
	}
}