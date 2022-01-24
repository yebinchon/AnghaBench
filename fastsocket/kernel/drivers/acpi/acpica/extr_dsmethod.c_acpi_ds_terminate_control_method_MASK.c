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
struct TYPE_8__ {int flags; int method_flags; int /*<<< orphan*/  owner_id; TYPE_3__* mutex; scalar_t__ thread_count; } ;
union acpi_operand_object {TYPE_4__ method; } ;
struct acpi_walk_state {int /*<<< orphan*/  method_node; TYPE_1__* thread; } ;
struct TYPE_6__ {int /*<<< orphan*/ * thread_id; int /*<<< orphan*/  os_mutex; int /*<<< orphan*/  original_sync_level; int /*<<< orphan*/  acquisition_depth; } ;
struct TYPE_7__ {TYPE_2__ mutex; } ;
struct TYPE_5__ {int /*<<< orphan*/  current_sync_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_DISPATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int AML_METHOD_SERIALIZED ; 
 int AOPOBJ_MODIFIED_NAMESPACE ; 
 int AOPOBJ_MODULE_LEVEL ; 
 int /*<<< orphan*/  FUNC3 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ds_terminate_control_method ; 
 int /*<<< orphan*/  return_VOID ; 

void
FUNC9(union acpi_operand_object *method_desc,
				 struct acpi_walk_state *walk_state)
{

	FUNC2(ds_terminate_control_method, walk_state);

	/* method_desc is required, walk_state is optional */

	if (!method_desc) {
		return_VOID;
	}

	if (walk_state) {

		/* Delete all arguments and locals */

		FUNC4(walk_state);

		/*
		 * If method is serialized, release the mutex and restore the
		 * current sync level for this thread
		 */
		if (method_desc->method.mutex) {

			/* Acquisition Depth handles recursive calls */

			method_desc->method.mutex->mutex.acquisition_depth--;
			if (!method_desc->method.mutex->mutex.acquisition_depth) {
				walk_state->thread->current_sync_level =
				    method_desc->method.mutex->mutex.
				    original_sync_level;

				FUNC7(method_desc->method.
						      mutex->mutex.os_mutex);
				method_desc->method.mutex->mutex.thread_id = NULL;
			}
		}

		/*
		 * Delete any namespace objects created anywhere within the
		 * namespace by the execution of this method. Unless this method
		 * is a module-level executable code method, in which case we
		 * want make the objects permanent.
		 */
		if (!(method_desc->method.flags & AOPOBJ_MODULE_LEVEL)) {

			/* Delete any direct children of (created by) this method */

			FUNC6(walk_state->
							 method_node);

			/*
			 * Delete any objects that were created by this method
			 * elsewhere in the namespace (if any were created).
			 */
			if (method_desc->method.
			    flags & AOPOBJ_MODIFIED_NAMESPACE) {
				FUNC5(method_desc->
								  method.
								  owner_id);
			}
		}
	}

	/* Decrement the thread count on the method */

	if (method_desc->method.thread_count) {
		method_desc->method.thread_count--;
	} else {
		FUNC1((AE_INFO, "Invalid zero thread count in method"));
	}

	/* Are there any other threads currently executing this method? */

	if (method_desc->method.thread_count) {
		/*
		 * Additional threads. Do not release the owner_id in this case,
		 * we immediately reuse it for the next thread executing this method
		 */
		FUNC0((ACPI_DB_DISPATCH,
				  "*** Completed execution of one thread, %d threads remaining\n",
				  method_desc->method.thread_count));
	} else {
		/* This is the only executing thread for this method */

		/*
		 * Support to dynamically change a method from not_serialized to
		 * Serialized if it appears that the method is incorrectly written and
		 * does not support multiple thread execution. The best example of this
		 * is if such a method creates namespace objects and blocks. A second
		 * thread will fail with an AE_ALREADY_EXISTS exception
		 *
		 * This code is here because we must wait until the last thread exits
		 * before creating the synchronization semaphore.
		 */
		if ((method_desc->method.method_flags & AML_METHOD_SERIALIZED)
		    && (!method_desc->method.mutex)) {
			(void)FUNC3(method_desc);
		}

		/* No more threads, we can free the owner_id */

		if (!(method_desc->method.flags & AOPOBJ_MODULE_LEVEL)) {
			FUNC8(&method_desc->method.owner_id);
		}
	}

	return_VOID;
}