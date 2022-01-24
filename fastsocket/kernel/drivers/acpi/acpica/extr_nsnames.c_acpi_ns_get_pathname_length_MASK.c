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
struct acpi_namespace_node {struct acpi_namespace_node* parent; } ;
typedef  int acpi_size ;

/* Variables and functions */
 scalar_t__ ACPI_DESC_TYPE_NAMED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct acpi_namespace_node*) ; 
 scalar_t__ ACPI_PATH_SEGMENT_LENGTH ; 
 int /*<<< orphan*/  AE_INFO ; 
 struct acpi_namespace_node* acpi_gbl_root_node ; 

acpi_size FUNC3(struct acpi_namespace_node *node)
{
	acpi_size size;
	struct acpi_namespace_node *next_node;

	FUNC1();

	/*
	 * Compute length of pathname as 5 * number of name segments.
	 * Go back up the parent tree to the root
	 */
	size = 0;
	next_node = node;

	while (next_node && (next_node != acpi_gbl_root_node)) {
		if (FUNC2(next_node) != ACPI_DESC_TYPE_NAMED) {
			FUNC0((AE_INFO,
				    "Invalid Namespace Node (%p) while traversing namespace",
				    next_node));
			return 0;
		}
		size += ACPI_PATH_SEGMENT_LENGTH;
		next_node = next_node->parent;
	}

	if (!size) {
		size = 1;	/* Root node case */
	}

	return (size + 1);	/* +1 for null string terminator */
}