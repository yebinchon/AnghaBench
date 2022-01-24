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
struct TYPE_2__ {int reference_count; int /*<<< orphan*/  type; } ;
union acpi_operand_object {TYPE_1__ common; } ;
typedef  int u32 ;
typedef  int u16 ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_ALLOCATIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int ACPI_MAX_REFERENCE_COUNT ; 
 int /*<<< orphan*/  ACPI_TYPE_METHOD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
#define  REF_DECREMENT 130 
#define  REF_FORCE_DELETE 129 
#define  REF_INCREMENT 128 
 int /*<<< orphan*/  FUNC4 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ut_update_ref_count ; 

__attribute__((used)) static void
FUNC5(union acpi_operand_object *object, u32 action)
{
	u16 count;
	u16 new_count;

	FUNC2(ut_update_ref_count);

	if (!object) {
		return;
	}

	count = object->common.reference_count;
	new_count = count;

	/*
	 * Perform the reference count action (increment, decrement, force delete)
	 */
	switch (action) {
	case REF_INCREMENT:

		new_count++;
		object->common.reference_count = new_count;

		FUNC0((ACPI_DB_ALLOCATIONS,
				  "Obj %p Refs=%X, [Incremented]\n",
				  object, new_count));
		break;

	case REF_DECREMENT:

		if (count < 1) {
			FUNC0((ACPI_DB_ALLOCATIONS,
					  "Obj %p Refs=%X, can't decrement! (Set to 0)\n",
					  object, new_count));

			new_count = 0;
		} else {
			new_count--;

			FUNC0((ACPI_DB_ALLOCATIONS,
					  "Obj %p Refs=%X, [Decremented]\n",
					  object, new_count));
		}

		if (object->common.type == ACPI_TYPE_METHOD) {
			FUNC0((ACPI_DB_ALLOCATIONS,
					  "Method Obj %p Refs=%X, [Decremented]\n",
					  object, new_count));
		}

		object->common.reference_count = new_count;
		if (new_count == 0) {
			FUNC4(object);
		}
		break;

	case REF_FORCE_DELETE:

		FUNC0((ACPI_DB_ALLOCATIONS,
				  "Obj %p Refs=%X, Force delete! (Set to 0)\n",
				  object, count));

		new_count = 0;
		object->common.reference_count = new_count;
		FUNC4(object);
		break;

	default:

		FUNC1((AE_INFO, "Unknown action (%X)", action));
		break;
	}

	/*
	 * Sanity check the reference count, for debug purposes only.
	 * (A deleted object will have a huge reference count)
	 */
	if (count > ACPI_MAX_REFERENCE_COUNT) {
		FUNC3((AE_INFO,
			      "Large Reference Count (%X) in object %p", count,
			      object));
	}
}