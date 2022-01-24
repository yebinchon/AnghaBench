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
typedef  int u8 ;
typedef  size_t u32 ;
struct acpi_walk_state {struct acpi_namespace_node* arguments; struct acpi_namespace_node* local_variables; } ;
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t ACPI_METHOD_MAX_ARG ; 
 size_t ACPI_METHOD_MAX_LOCAL ; 
#define  ACPI_REFCLASS_ARG 129 
#define  ACPI_REFCLASS_LOCAL 128 
 int /*<<< orphan*/  AE_AML_INVALID_INDEX ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_TYPE ; 
 int /*<<< orphan*/  ds_method_data_get_node ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC3(u8 type,
			     u32 index,
			     struct acpi_walk_state *walk_state,
			     struct acpi_namespace_node **node)
{
	FUNC1(ds_method_data_get_node);

	/*
	 * Method Locals and Arguments are supported
	 */
	switch (type) {
	case ACPI_REFCLASS_LOCAL:

		if (index > ACPI_METHOD_MAX_LOCAL) {
			FUNC0((AE_INFO,
				    "Local index %d is invalid (max %d)",
				    index, ACPI_METHOD_MAX_LOCAL));
			FUNC2(AE_AML_INVALID_INDEX);
		}

		/* Return a pointer to the pseudo-node */

		*node = &walk_state->local_variables[index];
		break;

	case ACPI_REFCLASS_ARG:

		if (index > ACPI_METHOD_MAX_ARG) {
			FUNC0((AE_INFO,
				    "Arg index %d is invalid (max %d)",
				    index, ACPI_METHOD_MAX_ARG));
			FUNC2(AE_AML_INVALID_INDEX);
		}

		/* Return a pointer to the pseudo-node */

		*node = &walk_state->arguments[index];
		break;

	default:
		FUNC0((AE_INFO, "Type %d is invalid", type));
		FUNC2(AE_TYPE);
	}

	FUNC2(AE_OK);
}