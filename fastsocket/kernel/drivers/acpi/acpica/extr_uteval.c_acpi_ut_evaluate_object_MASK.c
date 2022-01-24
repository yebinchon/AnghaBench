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
struct TYPE_2__ {int type; } ;
union acpi_operand_object {TYPE_1__ common; } ;
typedef  int u32 ;
struct acpi_namespace_node {int dummy; } ;
struct acpi_evaluate_info {char* pathname; union acpi_operand_object* return_object; struct acpi_namespace_node* prefix_node; } ;
typedef  scalar_t__ acpi_status ;

/* Variables and functions */
 struct acpi_evaluate_info* FUNC0 (int) ; 
 int ACPI_BTYPE_BUFFER ; 
 int ACPI_BTYPE_INTEGER ; 
 int ACPI_BTYPE_PACKAGE ; 
 int ACPI_BTYPE_STRING ; 
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct acpi_namespace_node*,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_evaluate_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
#define  ACPI_TYPE_BUFFER 131 
#define  ACPI_TYPE_INTEGER 130 
#define  ACPI_TYPE_PACKAGE 129 
#define  ACPI_TYPE_STRING 128 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__ AE_NOT_EXIST ; 
 scalar_t__ AE_NOT_FOUND ; 
 scalar_t__ AE_NO_MEMORY ; 
 scalar_t__ AE_TYPE ; 
 scalar_t__ acpi_gbl_enable_interpreter_slack ; 
 scalar_t__ FUNC7 (struct acpi_evaluate_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC9 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC10 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  ut_evaluate_object ; 

acpi_status
FUNC12(struct acpi_namespace_node *prefix_node,
			char *path,
			u32 expected_return_btypes,
			union acpi_operand_object **return_desc)
{
	struct acpi_evaluate_info *info;
	acpi_status status;
	u32 return_btype;

	FUNC6(ut_evaluate_object);

	/* Allocate the evaluation information block */

	info = FUNC0(sizeof(struct acpi_evaluate_info));
	if (!info) {
		FUNC11(AE_NO_MEMORY);
	}

	info->prefix_node = prefix_node;
	info->pathname = path;

	/* Evaluate the object/method */

	status = FUNC7(info);
	if (FUNC4(status)) {
		if (status == AE_NOT_FOUND) {
			FUNC1((ACPI_DB_EXEC,
					  "[%4.4s.%s] was not found\n",
					  FUNC8(prefix_node),
					  path));
		} else {
			FUNC3("Method execution failed",
					  prefix_node, path, status);
		}

		goto cleanup;
	}

	/* Did we get a return object? */

	if (!info->return_object) {
		if (expected_return_btypes) {
			FUNC3("No object was returned from",
					  prefix_node, path, AE_NOT_EXIST);

			status = AE_NOT_EXIST;
		}

		goto cleanup;
	}

	/* Map the return object type to the bitmapped type */

	switch ((info->return_object)->common.type) {
	case ACPI_TYPE_INTEGER:
		return_btype = ACPI_BTYPE_INTEGER;
		break;

	case ACPI_TYPE_BUFFER:
		return_btype = ACPI_BTYPE_BUFFER;
		break;

	case ACPI_TYPE_STRING:
		return_btype = ACPI_BTYPE_STRING;
		break;

	case ACPI_TYPE_PACKAGE:
		return_btype = ACPI_BTYPE_PACKAGE;
		break;

	default:
		return_btype = 0;
		break;
	}

	if ((acpi_gbl_enable_interpreter_slack) && (!expected_return_btypes)) {
		/*
		 * We received a return object, but one was not expected. This can
		 * happen frequently if the "implicit return" feature is enabled.
		 * Just delete the return object and return AE_OK.
		 */
		FUNC10(info->return_object);
		goto cleanup;
	}

	/* Is the return object one of the expected types? */

	if (!(expected_return_btypes & return_btype)) {
		FUNC3("Return object type is incorrect",
				  prefix_node, path, AE_TYPE);

		FUNC2((AE_INFO,
			    "Type returned from %s was incorrect: %s, expected Btypes: %X",
			    path,
			    FUNC9(info->return_object),
			    expected_return_btypes));

		/* On error exit, we must delete the return object */

		FUNC10(info->return_object);
		status = AE_TYPE;
		goto cleanup;
	}

	/* Object type is OK, return it */

	*return_desc = info->return_object;

      cleanup:
	FUNC5(info);
	FUNC11(status);
}