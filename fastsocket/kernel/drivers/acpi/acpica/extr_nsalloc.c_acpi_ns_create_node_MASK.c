#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ integer; } ;
struct acpi_namespace_node {TYPE_1__ name; } ;
struct TYPE_4__ {scalar_t__ total_allocated; scalar_t__ total_freed; scalar_t__ max_occupied; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DESC_TYPE_NAMED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_namespace_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_gbl_namespace_cache ; 
 TYPE_2__* acpi_gbl_ns_node_list ; 
 struct acpi_namespace_node* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ns_create_node ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_namespace_node*) ; 

struct acpi_namespace_node *FUNC5(u32 name)
{
	struct acpi_namespace_node *node;
#ifdef ACPI_DBG_TRACK_ALLOCATIONS
	u32 temp;
#endif

	FUNC0(ns_create_node);

	node = FUNC3(acpi_gbl_namespace_cache);
	if (!node) {
		FUNC4(NULL);
	}

	FUNC1(acpi_gbl_ns_node_list->total_allocated++);

#ifdef ACPI_DBG_TRACK_ALLOCATIONS
	temp = acpi_gbl_ns_node_list->total_allocated -
	    acpi_gbl_ns_node_list->total_freed;
	if (temp > acpi_gbl_ns_node_list->max_occupied) {
		acpi_gbl_ns_node_list->max_occupied = temp;
	}
#endif

	node->name.integer = name;
	FUNC2(node, ACPI_DESC_TYPE_NAMED);
	FUNC4(node);
}