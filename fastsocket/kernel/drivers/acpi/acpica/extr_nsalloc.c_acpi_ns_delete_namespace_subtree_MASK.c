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
typedef  scalar_t__ u32 ;
struct acpi_namespace_node {struct acpi_namespace_node* parent; scalar_t__ child; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_namespace_node*) ; 
 struct acpi_namespace_node* FUNC3 (struct acpi_namespace_node*,struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  ns_delete_namespace_subtree ; 
 int /*<<< orphan*/  return_VOID ; 

void FUNC4(struct acpi_namespace_node *parent_node)
{
	struct acpi_namespace_node *child_node = NULL;
	u32 level = 1;

	FUNC0(ns_delete_namespace_subtree);

	if (!parent_node) {
		return_VOID;
	}

	/*
	 * Traverse the tree of objects until we bubble back up
	 * to where we started.
	 */
	while (level > 0) {

		/* Get the next node in this scope (NULL if none) */

		child_node = FUNC3(parent_node, child_node);
		if (child_node) {

			/* Found a child node - detach any attached object */

			FUNC2(child_node);

			/* Check if this node has any children */

			if (child_node->child) {
				/*
				 * There is at least one child of this node,
				 * visit the node
				 */
				level++;
				parent_node = child_node;
				child_node = NULL;
			}
		} else {
			/*
			 * No more children of this parent node.
			 * Move up to the grandparent.
			 */
			level--;

			/*
			 * Now delete all of the children of this parent
			 * all at the same time.
			 */
			FUNC1(parent_node);

			/* New "last child" is this parent node */

			child_node = parent_node;

			/* Move up the tree to the grandparent */

			parent_node = parent_node->parent;
		}
	}

	return_VOID;
}