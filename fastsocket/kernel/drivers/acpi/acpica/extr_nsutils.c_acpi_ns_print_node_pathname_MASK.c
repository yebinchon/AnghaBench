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
struct acpi_buffer {scalar_t__ pointer; int /*<<< orphan*/  length; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_LOCAL_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_namespace_node*,struct acpi_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

void
FUNC4(struct acpi_namespace_node *node,
			    const char *message)
{
	struct acpi_buffer buffer;
	acpi_status status;

	if (!node) {
		FUNC3("[NULL NAME]");
		return;
	}

	/* Convert handle to full pathname and print it (with supplied message) */

	buffer.length = ACPI_ALLOCATE_LOCAL_BUFFER;

	status = FUNC2(node, &buffer);
	if (FUNC1(status)) {
		if (message) {
			FUNC3("%s ", message);
		}

		FUNC3("[%s] (Node %p)", (char *)buffer.pointer, node);
		FUNC0(buffer.pointer);
	}
}