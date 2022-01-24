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
typedef  int /*<<< orphan*/  u32 ;
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_size ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_namespace_node*,scalar_t__,char*) ; 
 scalar_t__ FUNC6 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  ns_get_external_pathname ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

char *FUNC8(struct acpi_namespace_node *node)
{
	acpi_status status;
	char *name_buffer;
	acpi_size size;

	FUNC4(ns_get_external_pathname, node);

	/* Calculate required buffer size based on depth below root */

	size = FUNC6(node);
	if (!size) {
		FUNC7(NULL);
	}

	/* Allocate a buffer to be returned to caller */

	name_buffer = FUNC0(size);
	if (!name_buffer) {
		FUNC1((AE_INFO, "Could not allocate %u bytes", (u32)size));
		FUNC7(NULL);
	}

	/* Build the path in the allocated buffer */

	status = FUNC5(node, size, name_buffer);
	if (FUNC2(status)) {
		FUNC3(name_buffer);
		FUNC7(NULL);
	}

	FUNC7(name_buffer);
}