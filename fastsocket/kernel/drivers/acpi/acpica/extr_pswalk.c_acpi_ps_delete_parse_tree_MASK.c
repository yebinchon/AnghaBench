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
struct TYPE_2__ {union acpi_parse_object* parent; union acpi_parse_object* next; } ;
union acpi_parse_object {TYPE_1__ common; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,union acpi_parse_object*) ; 
 int /*<<< orphan*/  FUNC1 (union acpi_parse_object*) ; 
 union acpi_parse_object* FUNC2 (union acpi_parse_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ps_delete_parse_tree ; 
 int /*<<< orphan*/  return_VOID ; 

void FUNC3(union acpi_parse_object *subtree_root)
{
	union acpi_parse_object *op = subtree_root;
	union acpi_parse_object *next = NULL;
	union acpi_parse_object *parent = NULL;

	FUNC0(ps_delete_parse_tree, subtree_root);

	/* Visit all nodes in the subtree */

	while (op) {

		/* Check if we are not ascending */

		if (op != parent) {

			/* Look for an argument or child of the current op */

			next = FUNC2(op, 0);
			if (next) {

				/* Still going downward in tree (Op is not completed yet) */

				op = next;
				continue;
			}
		}

		/* No more children, this Op is complete. */

		next = op->common.next;
		parent = op->common.parent;

		FUNC1(op);

		/* If we are back to the starting point, the walk is complete. */

		if (op == subtree_root) {
			return_VOID;
		}
		if (next) {
			op = next;
		} else {
			op = parent;
		}
	}

	return_VOID;
}