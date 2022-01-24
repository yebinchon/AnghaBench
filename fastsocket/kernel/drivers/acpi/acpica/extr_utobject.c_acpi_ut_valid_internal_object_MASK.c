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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  ACPI_DESC_TYPE_OPERAND 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  ut_valid_internal_object ; 

u8 FUNC4(void *object)
{

	FUNC1(ut_valid_internal_object);

	/* Check for a null pointer */

	if (!object) {
		FUNC0((ACPI_DB_EXEC, "**** Null Object Ptr\n"));
		return (FALSE);
	}

	/* Check the descriptor type field */

	switch (FUNC2(object)) {
	case ACPI_DESC_TYPE_OPERAND:

		/* The object appears to be a valid union acpi_operand_object    */

		return (TRUE);

	default:
		FUNC0((ACPI_DB_EXEC,
				  "%p is not not an ACPI operand obj [%s]\n",
				  object, FUNC3(object)));
		break;
	}

	return (FALSE);
}