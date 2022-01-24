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
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_adr_space_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_NS_WALK_UNLOCK ; 
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  acpi_ev_reg_run ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct acpi_namespace_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ev_execute_reg_methods ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC3(struct acpi_namespace_node *node,
			    acpi_adr_space_type space_id)
{
	acpi_status status;

	FUNC0(ev_execute_reg_methods);

	/*
	 * Run all _REG methods for all Operation Regions for this space ID. This
	 * is a separate walk in order to handle any interdependencies between
	 * regions and _REG methods. (i.e. handlers must be installed for all
	 * regions of this Space ID before we can run any _REG methods)
	 */
	status = FUNC1(ACPI_TYPE_ANY, node, ACPI_UINT32_MAX,
					ACPI_NS_WALK_UNLOCK, acpi_ev_reg_run,
					&space_id, NULL);

	FUNC2(status);
}