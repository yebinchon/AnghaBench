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
struct TYPE_2__ {scalar_t__ value; } ;
union acpi_operand_object {TYPE_1__ integer; } ;
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_walk_state {int dummy; } ;
struct acpi_namespace_node {union acpi_operand_object* object; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  ACPI_REFCLASS_ARG 129 
#define  ACPI_REFCLASS_LOCAL 128 
 int /*<<< orphan*/  ACPI_TYPE_INTEGER ; 
 int /*<<< orphan*/  AE_AML_INTERNAL ; 
 int /*<<< orphan*/  AE_AML_UNINITIALIZED_ARG ; 
 int /*<<< orphan*/  AE_AML_UNINITIALIZED_LOCAL ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,struct acpi_walk_state*,struct acpi_namespace_node**) ; 
 scalar_t__ acpi_gbl_enable_interpreter_slack ; 
 int /*<<< orphan*/  FUNC4 (union acpi_operand_object*) ; 
 union acpi_operand_object* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ds_method_data_get_value ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC7(u8 type,
			      u32 index,
			      struct acpi_walk_state *walk_state,
			      union acpi_operand_object **dest_desc)
{
	acpi_status status;
	struct acpi_namespace_node *node;
	union acpi_operand_object *object;

	FUNC2(ds_method_data_get_value);

	/* Validate the object descriptor */

	if (!dest_desc) {
		FUNC0((AE_INFO, "Null object descriptor pointer"));
		FUNC6(AE_BAD_PARAMETER);
	}

	/* Get the namespace node for the arg/local */

	status = FUNC3(type, index, walk_state, &node);
	if (FUNC1(status)) {
		FUNC6(status);
	}

	/* Get the object from the node */

	object = node->object;

	/* Examine the returned object, it must be valid. */

	if (!object) {
		/*
		 * Index points to uninitialized object.
		 * This means that either 1) The expected argument was
		 * not passed to the method, or 2) A local variable
		 * was referenced by the method (via the ASL)
		 * before it was initialized.  Either case is an error.
		 */

		/* If slack enabled, init the local_x/arg_x to an Integer of value zero */

		if (acpi_gbl_enable_interpreter_slack) {
			object =
			    FUNC5(ACPI_TYPE_INTEGER);
			if (!object) {
				FUNC6(AE_NO_MEMORY);
			}

			object->integer.value = 0;
			node->object = object;
		}

		/* Otherwise, return the error */

		else
			switch (type) {
			case ACPI_REFCLASS_ARG:

				FUNC0((AE_INFO,
					    "Uninitialized Arg[%d] at node %p",
					    index, node));

				FUNC6(AE_AML_UNINITIALIZED_ARG);

			case ACPI_REFCLASS_LOCAL:

				/*
				 * No error message for this case, will be trapped again later to
				 * detect and ignore cases of Store(local_x,local_x)
				 */
				FUNC6(AE_AML_UNINITIALIZED_LOCAL);

			default:

				FUNC0((AE_INFO,
					    "Not a Arg/Local opcode: %X",
					    type));
				FUNC6(AE_AML_INTERNAL);
			}
	}

	/*
	 * The Index points to an initialized and valid object.
	 * Return an additional reference to the object
	 */
	*dest_desc = object;
	FUNC4(object);

	FUNC6(AE_OK);
}