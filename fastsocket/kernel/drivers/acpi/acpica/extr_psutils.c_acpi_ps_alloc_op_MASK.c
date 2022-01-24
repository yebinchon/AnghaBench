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
struct TYPE_2__ {scalar_t__ flags; } ;
union acpi_parse_object {TYPE_1__ common; } ;
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct acpi_opcode_info {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ ACPI_PARSEOP_BYTELIST ; 
 scalar_t__ ACPI_PARSEOP_DEFERRED ; 
 scalar_t__ ACPI_PARSEOP_GENERIC ; 
 scalar_t__ ACPI_PARSEOP_NAMED ; 
 int AML_DEFER ; 
 int /*<<< orphan*/  AML_INT_BYTELIST_OP ; 
 int AML_NAMED ; 
 int /*<<< orphan*/  acpi_gbl_ps_node_cache ; 
 int /*<<< orphan*/  acpi_gbl_ps_node_ext_cache ; 
 union acpi_parse_object* FUNC1 (int /*<<< orphan*/ ) ; 
 struct acpi_opcode_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (union acpi_parse_object*,int /*<<< orphan*/ ) ; 

union acpi_parse_object *FUNC4(u16 opcode)
{
	union acpi_parse_object *op;
	const struct acpi_opcode_info *op_info;
	u8 flags = ACPI_PARSEOP_GENERIC;

	FUNC0();

	op_info = FUNC2(opcode);

	/* Determine type of parse_op required */

	if (op_info->flags & AML_DEFER) {
		flags = ACPI_PARSEOP_DEFERRED;
	} else if (op_info->flags & AML_NAMED) {
		flags = ACPI_PARSEOP_NAMED;
	} else if (opcode == AML_INT_BYTELIST_OP) {
		flags = ACPI_PARSEOP_BYTELIST;
	}

	/* Allocate the minimum required size object */

	if (flags == ACPI_PARSEOP_GENERIC) {

		/* The generic op (default) is by far the most common (16 to 1) */

		op = FUNC1(acpi_gbl_ps_node_cache);
	} else {
		/* Extended parseop */

		op = FUNC1(acpi_gbl_ps_node_ext_cache);
	}

	/* Initialize the Op */

	if (op) {
		FUNC3(op, opcode);
		op->common.flags = flags;
	}

	return (op);
}