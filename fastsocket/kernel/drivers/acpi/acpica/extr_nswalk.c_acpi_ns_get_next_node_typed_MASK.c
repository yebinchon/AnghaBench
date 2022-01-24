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
struct acpi_namespace_node {scalar_t__ type; struct acpi_namespace_node* peer; } ;
typedef  scalar_t__ acpi_object_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ ACPI_TYPE_ANY ; 
 struct acpi_namespace_node* FUNC1 (struct acpi_namespace_node*,struct acpi_namespace_node*) ; 

struct acpi_namespace_node *FUNC2(acpi_object_type type,
							struct
							acpi_namespace_node
							*parent_node,
							struct
							acpi_namespace_node
							*child_node)
{
	struct acpi_namespace_node *next_node = NULL;

	FUNC0();

	next_node = FUNC1(parent_node, child_node);


	/* If any type is OK, we are done */

	if (type == ACPI_TYPE_ANY) {

		/* next_node is NULL if we are at the end-of-list */

		return (next_node);
	}

	/* Must search for the node -- but within this scope only */

	while (next_node) {

		/* If type matches, we are done */

		if (next_node->type == type) {
			return (next_node);
		}

		/* Otherwise, move on to the next peer node */

		next_node = next_node->peer;
	}

	/* Not found */

	return (NULL);
}