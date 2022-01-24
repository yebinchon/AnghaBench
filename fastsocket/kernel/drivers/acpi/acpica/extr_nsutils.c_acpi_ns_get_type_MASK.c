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
struct acpi_namespace_node {scalar_t__ type; } ;
typedef  int /*<<< orphan*/  acpi_object_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  ns_get_type ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

acpi_object_type FUNC3(struct acpi_namespace_node * node)
{
	FUNC0(ns_get_type);

	if (!node) {
		FUNC1((AE_INFO, "Null Node parameter"));
		FUNC2(ACPI_TYPE_ANY);
	}

	FUNC2((acpi_object_type) node->type);
}