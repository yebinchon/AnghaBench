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
typedef  union acpi_parse_object {int dummy; } acpi_parse_object ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct acpi_walk_state {int dummy; } ;
struct acpi_table_header {int length; } ;
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_owner_id ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_PARSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_METHOD ; 
 int /*<<< orphan*/  AE_BAD_HEADER ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 struct acpi_walk_state* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_walk_state*,union acpi_parse_object*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_namespace_node*,int /*<<< orphan*/ ,struct acpi_walk_state*) ; 
 struct acpi_namespace_node* acpi_gbl_root_node ; 
 int /*<<< orphan*/  FUNC7 (int,struct acpi_table_header**) ; 
 union acpi_parse_object* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (union acpi_parse_object*) ; 
 int /*<<< orphan*/  FUNC10 (union acpi_parse_object*) ; 
 int /*<<< orphan*/  FUNC11 (struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ns_one_complete_parse ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC14(u32 pass_number,
			   u32 table_index,
			   struct acpi_namespace_node *start_node)
{
	union acpi_parse_object *parse_root;
	acpi_status status;
       u32 aml_length;
	u8 *aml_start;
	struct acpi_walk_state *walk_state;
	struct acpi_table_header *table;
	acpi_owner_id owner_id;

	FUNC2(ns_one_complete_parse);

	status = FUNC12(table_index, &owner_id);
	if (FUNC1(status)) {
		FUNC13(status);
	}

	/* Create and init a Root Node */

	parse_root = FUNC8();
	if (!parse_root) {
		FUNC13(AE_NO_MEMORY);
	}

	/* Create and initialize a new walk state */

	walk_state = FUNC3(owner_id, NULL, NULL, NULL);
	if (!walk_state) {
		FUNC10(parse_root);
		FUNC13(AE_NO_MEMORY);
	}

	status = FUNC7(table_index, &table);
	if (FUNC1(status)) {
		FUNC4(walk_state);
		FUNC10(parse_root);
		FUNC13(status);
	}

	/* Table must consist of at least a complete header */

	if (table->length < sizeof(struct acpi_table_header)) {
		status = AE_BAD_HEADER;
	} else {
		aml_start = (u8 *) table + sizeof(struct acpi_table_header);
		aml_length = table->length - sizeof(struct acpi_table_header);
		status = FUNC5(walk_state, parse_root, NULL,
					       aml_start, aml_length, NULL,
					       (u8) pass_number);
	}

	if (FUNC1(status)) {
		FUNC4(walk_state);
		goto cleanup;
	}

	/* start_node is the default location to load the table */

	if (start_node && start_node != acpi_gbl_root_node) {
		status =
		    FUNC6(start_node, ACPI_TYPE_METHOD,
					     walk_state);
		if (FUNC1(status)) {
			FUNC4(walk_state);
			goto cleanup;
		}
	}

	/* Parse the AML */

	FUNC0((ACPI_DB_PARSE, "*PARSE* pass %d parse\n",
			  (unsigned)pass_number));
	status = FUNC11(walk_state);

      cleanup:
	FUNC9(parse_root);
	FUNC13(status);
}