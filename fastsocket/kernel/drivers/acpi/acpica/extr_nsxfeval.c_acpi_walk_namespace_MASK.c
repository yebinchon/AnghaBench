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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  acpi_walk_callback ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_object_type ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void**)) ; 
 int /*<<< orphan*/  ACPI_MTX_NAMESPACE ; 
 int /*<<< orphan*/  ACPI_NS_WALK_UNLOCK ; 
 scalar_t__ ACPI_TYPE_LOCAL_MAX ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  acpi_gbl_namespace_rw_lock ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC8(acpi_object_type type,
		    acpi_handle start_object,
		    u32 max_depth,
		    acpi_walk_callback user_function,
		    void *context, void **return_value)
{
	acpi_status status;

	FUNC1(acpi_walk_namespace);

	/* Parameter validation */

	if ((type > ACPI_TYPE_LOCAL_MAX) || (!max_depth) || (!user_function)) {
		FUNC7(AE_BAD_PARAMETER);
	}

	/*
	 * Need to acquire the namespace reader lock to prevent interference
	 * with any concurrent table unloads (which causes the deletion of
	 * namespace objects). We cannot allow the deletion of a namespace node
	 * while the user function is using it. The exception to this are the
	 * nodes created and deleted during control method execution -- these
	 * nodes are marked as temporary nodes and are ignored by the namespace
	 * walk. Thus, control methods can be executed while holding the
	 * namespace deletion lock (and the user function can execute control
	 * methods.)
	 */
	status = FUNC4(&acpi_gbl_namespace_rw_lock);
	if (FUNC0(status)) {
		return status;
	}

	/*
	 * Lock the namespace around the walk. The namespace will be
	 * unlocked/locked around each call to the user function - since the user
	 * function must be allowed to make ACPICA calls itself (for example, it
	 * will typically execute control methods during device enumeration.)
	 */
	status = FUNC3(ACPI_MTX_NAMESPACE);
	if (FUNC0(status)) {
		goto unlock_and_exit;
	}

	status = FUNC2(type, start_object, max_depth,
					ACPI_NS_WALK_UNLOCK, user_function,
					context, return_value);

	(void)FUNC5(ACPI_MTX_NAMESPACE);

      unlock_and_exit:
	(void)FUNC6(&acpi_gbl_namespace_rw_lock);
	FUNC7(status);
}