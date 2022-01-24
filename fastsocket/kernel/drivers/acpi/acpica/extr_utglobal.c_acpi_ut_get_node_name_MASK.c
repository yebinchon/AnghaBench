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
struct TYPE_2__ {char* ascii; int /*<<< orphan*/  integer; } ;
struct acpi_namespace_node {TYPE_1__ name; } ;

/* Variables and functions */
 scalar_t__ ACPI_DESC_TYPE_NAMED ; 
 scalar_t__ FUNC0 (struct acpi_namespace_node*) ; 
 void* ACPI_ROOT_OBJECT ; 
 void* acpi_gbl_root_node ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

char *FUNC3(void *object)
{
	struct acpi_namespace_node *node = (struct acpi_namespace_node *)object;

	/* Must return a string of exactly 4 characters == ACPI_NAME_SIZE */

	if (!object) {
		return ("NULL");
	}

	/* Check for Root node */

	if ((object == ACPI_ROOT_OBJECT) || (object == acpi_gbl_root_node)) {
		return ("\"\\\" ");
	}

	/* Descriptor must be a namespace node */

	if (FUNC0(node) != ACPI_DESC_TYPE_NAMED) {
		return ("####");
	}

	/* Name must be a valid ACPI name */

	if (!FUNC2(node->name.integer)) {
		node->name.integer = FUNC1(node->name.ascii);
	}

	/* Return the name */

	return (node->name.ascii);
}