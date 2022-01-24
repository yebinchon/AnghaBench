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
struct TYPE_2__ {int /*<<< orphan*/  original_sync_level; int /*<<< orphan*/ * thread_id; int /*<<< orphan*/ * owner_thread; int /*<<< orphan*/  os_mutex; scalar_t__ acquisition_depth; union acpi_operand_object* next; int /*<<< orphan*/ * prev; } ;
union acpi_operand_object {TYPE_1__ mutex; } ;
struct acpi_thread_state {int /*<<< orphan*/  current_sync_level; union acpi_operand_object* acquired_mutex_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 union acpi_operand_object* acpi_gbl_global_lock_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct acpi_thread_state *thread)
{
	union acpi_operand_object *next = thread->acquired_mutex_list;
	union acpi_operand_object *obj_desc;

	FUNC0();

	/* Traverse the list of owned mutexes, releasing each one */

	while (next) {
		obj_desc = next;
		next = obj_desc->mutex.next;

		obj_desc->mutex.prev = NULL;
		obj_desc->mutex.next = NULL;
		obj_desc->mutex.acquisition_depth = 0;

		/* Release the mutex, special case for Global Lock */

		if (obj_desc == acpi_gbl_global_lock_mutex) {

			/* Ignore errors */

			(void)FUNC1();
		} else {
			FUNC2(obj_desc->mutex.os_mutex);
		}

		/* Mark mutex unowned */

		obj_desc->mutex.owner_thread = NULL;
		obj_desc->mutex.thread_id = NULL;

		/* Update Thread sync_level (Last mutex is the important one) */

		thread->current_sync_level =
		    obj_desc->mutex.original_sync_level;
	}
}