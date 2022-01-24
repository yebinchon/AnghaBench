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
struct acpi_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,struct acpi_buffer*)) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_namespace_node*,struct acpi_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct acpi_buffer*,struct acpi_namespace_node**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC5(acpi_handle device_handle,
			   struct acpi_buffer *ret_buffer)
{
	acpi_status status;
	struct acpi_namespace_node *node;

	FUNC1(acpi_get_irq_routing_table);

	/* Validate parameters then dispatch to internal routine */

	status = FUNC3(device_handle, ret_buffer, &node);
	if (FUNC0(status)) {
		FUNC4(status);
	}

	status = FUNC2(node, ret_buffer);
	FUNC4(status);
}