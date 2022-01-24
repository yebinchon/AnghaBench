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
struct TYPE_8__ {int type; } ;
struct TYPE_7__ {scalar_t__ length; int /*<<< orphan*/ * pointer; } ;
struct TYPE_6__ {char* pointer; scalar_t__ length; } ;
struct TYPE_5__ {int /*<<< orphan*/  value; } ;
union acpi_operand_object {TYPE_4__ common; TYPE_3__ buffer; TYPE_2__ string; TYPE_1__ integer; } ;
struct acpi_walk_state {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_IMPLICIT_CONVERT_HEX ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
#define  ACPI_TYPE_BUFFER 130 
#define  ACPI_TYPE_INTEGER 129 
#define  ACPI_TYPE_STRING 128 
 int /*<<< orphan*/  AE_AML_INTERNAL ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  FUNC6 (union acpi_operand_object*,union acpi_operand_object**) ; 
 int /*<<< orphan*/  FUNC7 (union acpi_operand_object*,union acpi_operand_object**,int) ; 
 int /*<<< orphan*/  FUNC8 (union acpi_operand_object*,union acpi_operand_object**,int /*<<< orphan*/ ) ; 
 scalar_t__ acpi_gbl_integer_byte_width ; 
 union acpi_operand_object* FUNC9 (scalar_t__) ; 
 union acpi_operand_object* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ex_do_concatenate ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC13(union acpi_operand_object *operand0,
		       union acpi_operand_object *operand1,
		       union acpi_operand_object **actual_return_desc,
		       struct acpi_walk_state *walk_state)
{
	union acpi_operand_object *local_operand1 = operand1;
	union acpi_operand_object *return_desc;
	char *new_buf;
	acpi_status status;

	FUNC2(ex_do_concatenate);

	/*
	 * Convert the second operand if necessary.  The first operand
	 * determines the type of the second operand, (See the Data Types
	 * section of the ACPI specification.)  Both object types are
	 * guaranteed to be either Integer/String/Buffer by the operand
	 * resolution mechanism.
	 */
	switch (operand0->common.type) {
	case ACPI_TYPE_INTEGER:
		status =
		    FUNC7(operand1, &local_operand1, 16);
		break;

	case ACPI_TYPE_STRING:
		status = FUNC8(operand1, &local_operand1,
						   ACPI_IMPLICIT_CONVERT_HEX);
		break;

	case ACPI_TYPE_BUFFER:
		status = FUNC6(operand1, &local_operand1);
		break;

	default:
		FUNC0((AE_INFO, "Invalid object type: %X",
			    operand0->common.type));
		status = AE_AML_INTERNAL;
	}

	if (FUNC1(status)) {
		goto cleanup;
	}

	/*
	 * Both operands are now known to be the same object type
	 * (Both are Integer, String, or Buffer), and we can now perform the
	 * concatenation.
	 */

	/*
	 * There are three cases to handle:
	 *
	 * 1) Two Integers concatenated to produce a new Buffer
	 * 2) Two Strings concatenated to produce a new String
	 * 3) Two Buffers concatenated to produce a new Buffer
	 */
	switch (operand0->common.type) {
	case ACPI_TYPE_INTEGER:

		/* Result of two Integers is a Buffer */
		/* Need enough buffer space for two integers */

		return_desc = FUNC9((acpi_size)
							   FUNC4
							   (acpi_gbl_integer_byte_width));
		if (!return_desc) {
			status = AE_NO_MEMORY;
			goto cleanup;
		}

		new_buf = (char *)return_desc->buffer.pointer;

		/* Copy the first integer, LSB first */

		FUNC3(new_buf, &operand0->integer.value,
			    acpi_gbl_integer_byte_width);

		/* Copy the second integer (LSB first) after the first */

		FUNC3(new_buf + acpi_gbl_integer_byte_width,
			    &local_operand1->integer.value,
			    acpi_gbl_integer_byte_width);
		break;

	case ACPI_TYPE_STRING:

		/* Result of two Strings is a String */

		return_desc = FUNC10(((acpi_size)
							    operand0->string.
							    length +
							    local_operand1->
							    string.length));
		if (!return_desc) {
			status = AE_NO_MEMORY;
			goto cleanup;
		}

		new_buf = return_desc->string.pointer;

		/* Concatenate the strings */

		FUNC5(new_buf, operand0->string.pointer);
		FUNC5(new_buf + operand0->string.length,
			    local_operand1->string.pointer);
		break;

	case ACPI_TYPE_BUFFER:

		/* Result of two Buffers is a Buffer */

		return_desc = FUNC9(((acpi_size)
							    operand0->buffer.
							    length +
							    local_operand1->
							    buffer.length));
		if (!return_desc) {
			status = AE_NO_MEMORY;
			goto cleanup;
		}

		new_buf = (char *)return_desc->buffer.pointer;

		/* Concatenate the buffers */

		FUNC3(new_buf, operand0->buffer.pointer,
			    operand0->buffer.length);
		FUNC3(new_buf + operand0->buffer.length,
			    local_operand1->buffer.pointer,
			    local_operand1->buffer.length);
		break;

	default:

		/* Invalid object type, should not happen here */

		FUNC0((AE_INFO, "Invalid object type: %X",
			    operand0->common.type));
		status = AE_AML_INTERNAL;
		goto cleanup;
	}

	*actual_return_desc = return_desc;

      cleanup:
	if (local_operand1 != operand1) {
		FUNC11(local_operand1);
	}
	FUNC12(status);
}