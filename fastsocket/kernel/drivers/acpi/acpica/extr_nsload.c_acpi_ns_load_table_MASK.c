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
typedef  int /*<<< orphan*/  u32 ;
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_MTX_NAMESPACE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_ALREADY_EXISTS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ns_load_table ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC13(u32 table_index, struct acpi_namespace_node *node)
{
	acpi_status status;

	FUNC2(ns_load_table);

	/*
	 * Parse the table and load the namespace with all named
	 * objects found within.  Control methods are NOT parsed
	 * at this time.  In fact, the control methods cannot be
	 * parsed until the entire namespace is loaded, because
	 * if a control method makes a forward reference (call)
	 * to another control method, we can't continue parsing
	 * because we don't know how many arguments to parse next!
	 */
	status = FUNC10(ACPI_MTX_NAMESPACE);
	if (FUNC1(status)) {
		FUNC12(status);
	}

	/* If table already loaded into namespace, just return */

	if (FUNC7(table_index)) {
		status = AE_ALREADY_EXISTS;
		goto unlock;
	}

	FUNC0((ACPI_DB_INFO,
			  "**** Loading table into namespace ****\n"));

	status = FUNC6(table_index);
	if (FUNC1(status)) {
		goto unlock;
	}

	status = FUNC5(table_index, node);
	if (FUNC3(status)) {
		FUNC9(table_index, TRUE);
	} else {
		(void)FUNC8(table_index);
	}

      unlock:
	(void)FUNC11(ACPI_MTX_NAMESPACE);

	if (FUNC1(status)) {
		FUNC12(status);
	}

	/*
	 * Now we can parse the control methods.  We always parse
	 * them here for a sanity check, and if configured for
	 * just-in-time parsing, we delete the control method
	 * parse trees.
	 */
	FUNC0((ACPI_DB_INFO,
			  "**** Begin Table Method Parsing and Object Initialization\n"));

	status = FUNC4(table_index, node);

	FUNC0((ACPI_DB_INFO,
			  "**** Completed Table Method Parsing and Object Initialization\n"));

	FUNC12(status);
}