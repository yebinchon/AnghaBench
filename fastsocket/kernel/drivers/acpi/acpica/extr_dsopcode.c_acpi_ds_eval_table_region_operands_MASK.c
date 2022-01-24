#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {union acpi_parse_object* arg; } ;
struct TYPE_6__ {int /*<<< orphan*/  aml_opcode; TYPE_1__ value; struct acpi_namespace_node* node; } ;
union acpi_parse_object {TYPE_2__ common; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  length; scalar_t__ address; } ;
struct TYPE_7__ {int /*<<< orphan*/  pointer; } ;
union acpi_operand_object {TYPE_4__ region; TYPE_3__ string; } ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_walk_state {union acpi_operand_object** operands; } ;
struct acpi_table_header {int /*<<< orphan*/  length; } ;
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_physical_address ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,union acpi_parse_object*) ; 
 scalar_t__ FUNC4 (struct acpi_table_header*) ; 
 int /*<<< orphan*/  ACPI_WALK_OPERANDS ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  AOPOBJ_DATA_VALID ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_walk_state*,union acpi_parse_object*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct acpi_table_header**) ; 
 union acpi_operand_object* FUNC8 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ds_eval_table_region_operands ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC12(struct acpi_walk_state *walk_state,
				   union acpi_parse_object *op)
{
	acpi_status status;
	union acpi_operand_object *obj_desc;
	union acpi_operand_object **operand;
	struct acpi_namespace_node *node;
	union acpi_parse_object *next_op;
	u32 table_index;
	struct acpi_table_header *table;

	FUNC3(ds_eval_table_region_operands, op);

	/*
	 * This is where we evaluate the signature_string and oem_iDString
	 * and oem_table_iDString of the data_table_region declaration
	 */
	node = op->common.node;

	/* next_op points to signature_string op */

	next_op = op->common.value.arg;

	/*
	 * Evaluate/create the signature_string and oem_iDString
	 * and oem_table_iDString operands
	 */
	status = FUNC5(walk_state, next_op);
	if (FUNC1(status)) {
		FUNC11(status);
	}

	/*
	 * Resolve the signature_string and oem_iDString
	 * and oem_table_iDString operands
	 */
	status = FUNC6(op->common.aml_opcode,
					  ACPI_WALK_OPERANDS, walk_state);
	if (FUNC1(status)) {
		FUNC11(status);
	}

	operand = &walk_state->operands[0];

	/* Find the ACPI table */

	status = FUNC9(operand[0]->string.pointer,
				    operand[1]->string.pointer,
				    operand[2]->string.pointer, &table_index);
	if (FUNC1(status)) {
		FUNC11(status);
	}

	FUNC10(operand[0]);
	FUNC10(operand[1]);
	FUNC10(operand[2]);

	status = FUNC7(table_index, &table);
	if (FUNC1(status)) {
		FUNC11(status);
	}

	obj_desc = FUNC8(node);
	if (!obj_desc) {
		FUNC11(AE_NOT_EXIST);
	}

	obj_desc->region.address =
	    (acpi_physical_address) FUNC4(table);
	obj_desc->region.length = table->length;

	FUNC0((ACPI_DB_EXEC, "RgnObj %p Addr %8.8X%8.8X Len %X\n",
			  obj_desc,
			  FUNC2(obj_desc->region.address),
			  obj_desc->region.length));

	/* Now the address and length are valid for this opregion */

	obj_desc->region.flags |= AOPOBJ_DATA_VALID;

	FUNC11(status);
}