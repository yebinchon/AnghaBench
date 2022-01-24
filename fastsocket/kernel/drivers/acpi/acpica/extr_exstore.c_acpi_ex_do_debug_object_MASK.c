#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {union acpi_operand_object* object; union acpi_operand_object* node; int /*<<< orphan*/  value; int /*<<< orphan*/  class; } ;
struct TYPE_13__ {int /*<<< orphan*/  ascii; } ;
struct TYPE_12__ {scalar_t__ count; union acpi_operand_object** elements; } ;
struct TYPE_11__ {int /*<<< orphan*/  pointer; int /*<<< orphan*/  length; } ;
struct TYPE_10__ {int length; int /*<<< orphan*/  pointer; } ;
struct TYPE_9__ {int /*<<< orphan*/  value; } ;
struct TYPE_8__ {int type; } ;
union acpi_operand_object {TYPE_7__ reference; union acpi_operand_object* object; int /*<<< orphan*/  type; TYPE_6__ name; TYPE_5__ package; TYPE_4__ string; TYPE_3__ buffer; TYPE_2__ integer; TYPE_1__ common; } ;
typedef  scalar_t__ u32 ;
struct acpi_namespace_node {union acpi_operand_object* object; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_DEBUG_OBJECT ; 
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_DESC_TYPE_NAMED ; 
 scalar_t__ ACPI_DESC_TYPE_OPERAND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,union acpi_operand_object*) ; 
 scalar_t__ FUNC4 (union acpi_operand_object*) ; 
#define  ACPI_REFCLASS_INDEX 136 
#define  ACPI_REFCLASS_TABLE 135 
#define  ACPI_TYPE_BUFFER 134 
#define  ACPI_TYPE_DEVICE 133 
#define  ACPI_TYPE_INTEGER 132 
#define  ACPI_TYPE_LOCAL_REFERENCE 131 
#define  ACPI_TYPE_PACKAGE 130 
#define  ACPI_TYPE_STRING 129 
#define  ACPI_TYPE_THERMAL 128 
 int acpi_gbl_integer_byte_width ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC7 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ex_do_debug_object ; 
 int /*<<< orphan*/  return_VOID ; 

__attribute__((used)) static void
FUNC10(union acpi_operand_object *source_desc,
			u32 level, u32 index)
{
	u32 i;

	FUNC3(ex_do_debug_object, source_desc);

	/* Print line header as long as we are not in the middle of an object display */

	if (!((level > 0) && index == 0)) {
		FUNC0((ACPI_DB_DEBUG_OBJECT, "[ACPI Debug] %*s",
				      level, " "));
	}

	/* Display index for package output only */

	if (index > 0) {
		FUNC0((ACPI_DB_DEBUG_OBJECT,
				      "(%.2u) ", index - 1));
	}

	if (!source_desc) {
		FUNC0((ACPI_DB_DEBUG_OBJECT, "[Null Object]\n"));
		return_VOID;
	}

	if (FUNC4(source_desc) == ACPI_DESC_TYPE_OPERAND) {
		FUNC0((ACPI_DB_DEBUG_OBJECT, "%s ",
				      FUNC6
				      (source_desc)));

		if (!FUNC9(source_desc)) {
			FUNC0((ACPI_DB_DEBUG_OBJECT,
					      "%p, Invalid Internal Object!\n",
					      source_desc));
			return_VOID;
		}
	} else if (FUNC4(source_desc) ==
		   ACPI_DESC_TYPE_NAMED) {
		FUNC0((ACPI_DB_DEBUG_OBJECT, "%s: %p\n",
				      FUNC8(((struct
							      acpi_namespace_node
							      *)source_desc)->
							    type),
				      source_desc));
		return_VOID;
	} else {
		return_VOID;
	}

	/* source_desc is of type ACPI_DESC_TYPE_OPERAND */

	switch (source_desc->common.type) {
	case ACPI_TYPE_INTEGER:

		/* Output correct integer width */

		if (acpi_gbl_integer_byte_width == 4) {
			FUNC0((ACPI_DB_DEBUG_OBJECT, "0x%8.8X\n",
					      (u32) source_desc->integer.
					      value));
		} else {
			FUNC0((ACPI_DB_DEBUG_OBJECT,
					      "0x%8.8X%8.8X\n",
					      FUNC2(source_desc->
								 integer.
								 value)));
		}
		break;

	case ACPI_TYPE_BUFFER:

		FUNC0((ACPI_DB_DEBUG_OBJECT, "[0x%.2X]\n",
				      (u32) source_desc->buffer.length));
		FUNC1(source_desc->buffer.pointer,
				 (source_desc->buffer.length <
				  256) ? source_desc->buffer.length : 256);
		break;

	case ACPI_TYPE_STRING:

		FUNC0((ACPI_DB_DEBUG_OBJECT, "[0x%.2X] \"%s\"\n",
				      source_desc->string.length,
				      source_desc->string.pointer));
		break;

	case ACPI_TYPE_PACKAGE:

		FUNC0((ACPI_DB_DEBUG_OBJECT,
				      "[Contains 0x%.2X Elements]\n",
				      source_desc->package.count));

		/* Output the entire contents of the package */

		for (i = 0; i < source_desc->package.count; i++) {
			FUNC10(source_desc->package.
						elements[i], level + 4, i + 1);
		}
		break;

	case ACPI_TYPE_LOCAL_REFERENCE:

		FUNC0((ACPI_DB_DEBUG_OBJECT, "[%s] ",
				      FUNC7(source_desc)));

		/* Decode the reference */

		switch (source_desc->reference.class) {
		case ACPI_REFCLASS_INDEX:

			FUNC0((ACPI_DB_DEBUG_OBJECT, "0x%X\n",
					      source_desc->reference.value));
			break;

		case ACPI_REFCLASS_TABLE:

			/* Case for ddb_handle */

			FUNC0((ACPI_DB_DEBUG_OBJECT,
					      "Table Index 0x%X\n",
					      source_desc->reference.value));
			return;

		default:
			break;
		}

		FUNC0((ACPI_DB_DEBUG_OBJECT, "  "));

		/* Check for valid node first, then valid object */

		if (source_desc->reference.node) {
			if (FUNC4
			    (source_desc->reference.node) !=
			    ACPI_DESC_TYPE_NAMED) {
				FUNC0((ACPI_DB_DEBUG_OBJECT,
						      " %p - Not a valid namespace node\n",
						      source_desc->reference.
						      node));
			} else {
				FUNC0((ACPI_DB_DEBUG_OBJECT,
						      "Node %p [%4.4s] ",
						      source_desc->reference.
						      node,
						      (source_desc->reference.
						       node)->name.ascii));

				switch ((source_desc->reference.node)->type) {

					/* These types have no attached object */

				case ACPI_TYPE_DEVICE:
					FUNC5("Device\n");
					break;

				case ACPI_TYPE_THERMAL:
					FUNC5("Thermal Zone\n");
					break;

				default:
					FUNC10((source_desc->
								 reference.
								 node)->object,
								level + 4, 0);
					break;
				}
			}
		} else if (source_desc->reference.object) {
			if (FUNC4
			    (source_desc->reference.object) ==
			    ACPI_DESC_TYPE_NAMED) {
				FUNC10(((struct
							  acpi_namespace_node *)
							 source_desc->reference.
							 object)->object,
							level + 4, 0);
			} else {
				FUNC10(source_desc->reference.
							object, level + 4, 0);
			}
		}
		break;

	default:

		FUNC0((ACPI_DB_DEBUG_OBJECT, "%p\n",
				      source_desc));
		break;
	}

	FUNC0((ACPI_DB_EXEC, "\n"));
	return_VOID;
}