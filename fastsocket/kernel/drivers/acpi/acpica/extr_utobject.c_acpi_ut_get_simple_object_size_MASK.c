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
struct TYPE_7__ {int /*<<< orphan*/  class; int /*<<< orphan*/  node; } ;
struct TYPE_6__ {int /*<<< orphan*/  length; } ;
struct TYPE_5__ {int /*<<< orphan*/  length; } ;
union acpi_operand_object {TYPE_4__ common; TYPE_3__ reference; TYPE_2__ buffer; TYPE_1__ string; } ;
typedef  union acpi_object {int dummy; } acpi_object ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int acpi_size ;

/* Variables and functions */
 scalar_t__ ACPI_DESC_TYPE_NAMED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,union acpi_operand_object*) ; 
 scalar_t__ FUNC2 (union acpi_operand_object*) ; 
#define  ACPI_REFCLASS_NAME 134 
 int FUNC3 (int) ; 
#define  ACPI_TYPE_BUFFER 133 
#define  ACPI_TYPE_INTEGER 132 
#define  ACPI_TYPE_LOCAL_REFERENCE 131 
#define  ACPI_TYPE_POWER 130 
#define  ACPI_TYPE_PROCESSOR 129 
#define  ACPI_TYPE_STRING 128 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_TYPE ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC6 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ut_get_simple_object_size ; 

__attribute__((used)) static acpi_status
FUNC8(union acpi_operand_object *internal_object,
			       acpi_size * obj_length)
{
	acpi_size length;
	acpi_size size;
	acpi_status status = AE_OK;

	FUNC1(ut_get_simple_object_size, internal_object);

	/*
	 * Handle a null object (Could be a uninitialized package
	 * element -- which is legal)
	 */
	if (!internal_object) {
		*obj_length = sizeof(union acpi_object);
		FUNC7(AE_OK);
	}

	/* Start with the length of the Acpi object */

	length = sizeof(union acpi_object);

	if (FUNC2(internal_object) == ACPI_DESC_TYPE_NAMED) {

		/* Object is a named object (reference), just return the length */

		*obj_length = FUNC3(length);
		FUNC7(status);
	}

	/*
	 * The final length depends on the object type
	 * Strings and Buffers are packed right up against the parent object and
	 * must be accessed bytewise or there may be alignment problems on
	 * certain processors
	 */
	switch (internal_object->common.type) {
	case ACPI_TYPE_STRING:

		length += (acpi_size) internal_object->string.length + 1;
		break;

	case ACPI_TYPE_BUFFER:

		length += (acpi_size) internal_object->buffer.length;
		break;

	case ACPI_TYPE_INTEGER:
	case ACPI_TYPE_PROCESSOR:
	case ACPI_TYPE_POWER:

		/* No extra data for these types */

		break;

	case ACPI_TYPE_LOCAL_REFERENCE:

		switch (internal_object->reference.class) {
		case ACPI_REFCLASS_NAME:

			/*
			 * Get the actual length of the full pathname to this object.
			 * The reference will be converted to the pathname to the object
			 */
			size =
			    FUNC4(internal_object->
							reference.node);
			if (!size) {
				FUNC7(AE_BAD_PARAMETER);
			}

			length += FUNC3(size);
			break;

		default:

			/*
			 * No other reference opcodes are supported.
			 * Notably, Locals and Args are not supported, but this may be
			 * required eventually.
			 */
			FUNC0((AE_INFO,
				    "Cannot convert to external object - "
				    "unsupported Reference Class [%s] %X in object %p",
				    FUNC6(internal_object),
				    internal_object->reference.class,
				    internal_object));
			status = AE_TYPE;
			break;
		}
		break;

	default:

		FUNC0((AE_INFO, "Cannot convert to external object - "
			    "unsupported type [%s] %X in object %p",
			    FUNC5(internal_object),
			    internal_object->common.type, internal_object));
		status = AE_TYPE;
		break;
	}

	/*
	 * Account for the space required by the object rounded up to the next
	 * multiple of the machine word size.  This keeps each object aligned
	 * on a machine word boundary. (preventing alignment faults on some
	 * machines.)
	 */
	*obj_length = FUNC3(length);
	FUNC7(status);
}