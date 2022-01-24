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
typedef  int u32 ;
typedef  size_t acpi_object_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ACPI_NS_NEWSCOPE ; 
 int ACPI_NS_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__* acpi_gbl_ns_properties ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  ns_opens_scope ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

u32 FUNC5(acpi_object_type type)
{
	FUNC0(ns_opens_scope, FUNC2(type));

	if (!FUNC3(type)) {

		/* type code out of range  */

		FUNC1((AE_INFO, "Invalid Object Type %X", type));
		FUNC4(ACPI_NS_NORMAL);
	}

	FUNC4(((u32) acpi_gbl_ns_properties[type]) & ACPI_NS_NEWSCOPE);
}