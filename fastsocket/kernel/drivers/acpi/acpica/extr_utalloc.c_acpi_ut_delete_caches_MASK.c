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
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ acpi_gbl_display_final_mem_stats ; 
 int /*<<< orphan*/ * acpi_gbl_global_list ; 
 int /*<<< orphan*/ * acpi_gbl_namespace_cache ; 
 int /*<<< orphan*/ * acpi_gbl_ns_node_list ; 
 int /*<<< orphan*/ * acpi_gbl_operand_cache ; 
 int /*<<< orphan*/ * acpi_gbl_ps_node_cache ; 
 int /*<<< orphan*/ * acpi_gbl_ps_node_ext_cache ; 
 int /*<<< orphan*/ * acpi_gbl_state_cache ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

acpi_status FUNC5(void)
{
#ifdef ACPI_DBG_TRACK_ALLOCATIONS
	char buffer[7];

	if (acpi_gbl_display_final_mem_stats) {
		ACPI_STRCPY(buffer, "MEMORY");
		(void)acpi_db_display_statistics(buffer);
	}
#endif

	(void)FUNC3(acpi_gbl_namespace_cache);
	acpi_gbl_namespace_cache = NULL;

	(void)FUNC3(acpi_gbl_state_cache);
	acpi_gbl_state_cache = NULL;

	(void)FUNC3(acpi_gbl_operand_cache);
	acpi_gbl_operand_cache = NULL;

	(void)FUNC3(acpi_gbl_ps_node_cache);
	acpi_gbl_ps_node_cache = NULL;

	(void)FUNC3(acpi_gbl_ps_node_ext_cache);
	acpi_gbl_ps_node_ext_cache = NULL;

#ifdef ACPI_DBG_TRACK_ALLOCATIONS

	/* Debug only - display leftover memory allocation, if any */

	acpi_ut_dump_allocations(ACPI_UINT32_MAX, NULL);

	/* Free memory lists */

	ACPI_FREE(acpi_gbl_global_list);
	acpi_gbl_global_list = NULL;

	ACPI_FREE(acpi_gbl_ns_node_list);
	acpi_gbl_ns_node_list = NULL;
#endif

	return (AE_OK);
}