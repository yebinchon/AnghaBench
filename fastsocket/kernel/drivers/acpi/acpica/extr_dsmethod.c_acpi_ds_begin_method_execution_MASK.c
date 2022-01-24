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
struct TYPE_8__ {scalar_t__ thread_count; int method_flags; scalar_t__ sync_level; TYPE_3__* mutex; int /*<<< orphan*/  owner_id; } ;
union acpi_operand_object {TYPE_4__ method; } ;
struct acpi_walk_state {TYPE_1__* thread; } ;
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_6__ {scalar_t__ sync_level; scalar_t__ thread_id; scalar_t__ original_sync_level; int /*<<< orphan*/  os_mutex; int /*<<< orphan*/  acquisition_depth; } ;
struct TYPE_7__ {TYPE_2__ mutex; } ;
struct TYPE_5__ {scalar_t__ current_sync_level; scalar_t__ thread_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct acpi_namespace_node*) ; 
 scalar_t__ ACPI_UINT8_MAX ; 
 int /*<<< orphan*/  ACPI_WAIT_FOREVER ; 
 int /*<<< orphan*/  AE_AML_METHOD_LIMIT ; 
 int /*<<< orphan*/  AE_AML_MUTEX_ORDER ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NULL_ENTRY ; 
 int /*<<< orphan*/  AE_OK ; 
 int AML_METHOD_SERIALIZED ; 
 int /*<<< orphan*/  FUNC3 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  ds_begin_method_execution ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC9(struct acpi_namespace_node *method_node,
			       union acpi_operand_object *obj_desc,
			       struct acpi_walk_state *walk_state)
{
	acpi_status status = AE_OK;

	FUNC2(ds_begin_method_execution, method_node);

	if (!method_node) {
		FUNC8(AE_NULL_ENTRY);
	}

	/* Prevent wraparound of thread count */

	if (obj_desc->method.thread_count == ACPI_UINT8_MAX) {
		FUNC0((AE_INFO,
			    "Method reached maximum reentrancy limit (255)"));
		FUNC8(AE_AML_METHOD_LIMIT);
	}

	/*
	 * If this method is serialized, we need to acquire the method mutex.
	 */
	if (obj_desc->method.method_flags & AML_METHOD_SERIALIZED) {
		/*
		 * Create a mutex for the method if it is defined to be Serialized
		 * and a mutex has not already been created. We defer the mutex creation
		 * until a method is actually executed, to minimize the object count
		 */
		if (!obj_desc->method.mutex) {
			status = FUNC3(obj_desc);
			if (FUNC1(status)) {
				FUNC8(status);
			}
		}

		/*
		 * The current_sync_level (per-thread) must be less than or equal to
		 * the sync level of the method. This mechanism provides some
		 * deadlock prevention
		 *
		 * Top-level method invocation has no walk state at this point
		 */
		if (walk_state &&
		    (walk_state->thread->current_sync_level >
		     obj_desc->method.mutex->mutex.sync_level)) {
			FUNC0((AE_INFO,
				    "Cannot acquire Mutex for method [%4.4s], current SyncLevel is too large (%d)",
				    FUNC7(method_node),
				    walk_state->thread->current_sync_level));

			FUNC8(AE_AML_MUTEX_ORDER);
		}

		/*
		 * Obtain the method mutex if necessary. Do not acquire mutex for a
		 * recursive call.
		 */
		if (!walk_state ||
		    !obj_desc->method.mutex->mutex.thread_id ||
		    (walk_state->thread->thread_id !=
		     obj_desc->method.mutex->mutex.thread_id)) {
			/*
			 * Acquire the method mutex. This releases the interpreter if we
			 * block (and reacquires it before it returns)
			 */
			status =
			    FUNC4(obj_desc->method.mutex->
						      mutex.os_mutex,
						      ACPI_WAIT_FOREVER);
			if (FUNC1(status)) {
				FUNC8(status);
			}

			/* Update the mutex and walk info and save the original sync_level */

			if (walk_state) {
				obj_desc->method.mutex->mutex.
				    original_sync_level =
				    walk_state->thread->current_sync_level;

				obj_desc->method.mutex->mutex.thread_id =
				    walk_state->thread->thread_id;
				walk_state->thread->current_sync_level =
				    obj_desc->method.sync_level;
			} else {
				obj_desc->method.mutex->mutex.
				    original_sync_level =
				    obj_desc->method.mutex->mutex.sync_level;
			}
		}

		/* Always increase acquisition depth */

		obj_desc->method.mutex->mutex.acquisition_depth++;
	}

	/*
	 * Allocate an Owner ID for this method, only if this is the first thread
	 * to begin concurrent execution. We only need one owner_id, even if the
	 * method is invoked recursively.
	 */
	if (!obj_desc->method.owner_id) {
		status = FUNC6(&obj_desc->method.owner_id);
		if (FUNC1(status)) {
			goto cleanup;
		}
	}

	/*
	 * Increment the method parse tree thread count since it has been
	 * reentered one more time (even if it is the same thread)
	 */
	obj_desc->method.thread_count++;
	FUNC8(status);

      cleanup:
	/* On error, must release the method mutex (if present) */

	if (obj_desc->method.mutex) {
		FUNC5(obj_desc->method.mutex->mutex.os_mutex);
	}
	FUNC8(status);
}