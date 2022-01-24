#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  type; int /*<<< orphan*/  flags; } ;
struct TYPE_9__ {int /*<<< orphan*/  os_mutex; void* sync_level; struct acpi_namespace_node* node; } ;
struct TYPE_8__ {int /*<<< orphan*/ * pointer; int /*<<< orphan*/  length; } ;
struct TYPE_7__ {int /*<<< orphan*/  value; } ;
struct TYPE_6__ {int /*<<< orphan*/  implementation; int /*<<< orphan*/  method_flags; void* param_count; } ;
union acpi_operand_object {TYPE_5__ common; TYPE_4__ mutex; TYPE_3__ string; TYPE_2__ integer; TYPE_1__ method; } ;
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_predefined_names {int type; scalar_t__ name; int /*<<< orphan*/ * val; } ;
struct acpi_namespace_node {void* value; } ;
typedef  int /*<<< orphan*/ * acpi_string ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_IMODE_LOAD_PASS2 ; 
 int /*<<< orphan*/  ACPI_MTX_NAMESPACE ; 
 int /*<<< orphan*/  ACPI_NS_NO_UPSEARCH ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
#define  ACPI_TYPE_INTEGER 131 
#define  ACPI_TYPE_METHOD 130 
#define  ACPI_TYPE_MUTEX 129 
#define  ACPI_TYPE_STRING 128 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AML_METHOD_INTERNAL_ONLY ; 
 int /*<<< orphan*/  AOPOBJ_DATA_VALID ; 
 int /*<<< orphan*/  AOPOBJ_STATIC_POINTER ; 
 int /*<<< orphan*/  acpi_gbl_create_osi_method ; 
 int /*<<< orphan*/  acpi_gbl_fadt_gpe_device ; 
 union acpi_operand_object* acpi_gbl_global_lock_mutex ; 
 int /*<<< orphan*/  acpi_gbl_global_lock_semaphore ; 
 struct acpi_predefined_names* acpi_gbl_pre_defined_names ; 
 int /*<<< orphan*/ * acpi_gbl_root_node ; 
 int /*<<< orphan*/  acpi_gbl_root_node_struct ; 
 int /*<<< orphan*/  FUNC9 (struct acpi_namespace_node*,union acpi_operand_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct acpi_namespace_node**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct acpi_predefined_names const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 union acpi_operand_object* FUNC16 (int) ; 
 int /*<<< orphan*/  acpi_ut_osi_implementation ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ns_root_initialize ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

acpi_status FUNC20(void)
{
	acpi_status status;
	const struct acpi_predefined_names *init_val = NULL;
	struct acpi_namespace_node *new_node;
	union acpi_operand_object *obj_desc;
	acpi_string val = NULL;

	FUNC4(ns_root_initialize);

	status = FUNC15(ACPI_MTX_NAMESPACE);
	if (FUNC3(status)) {
		FUNC19(status);
	}

	/*
	 * The global root ptr is initially NULL, so a non-NULL value indicates
	 * that acpi_ns_root_initialize() has already been called; just return.
	 */
	if (acpi_gbl_root_node) {
		status = AE_OK;
		goto unlock_and_exit;
	}

	/*
	 * Tell the rest of the subsystem that the root is initialized
	 * (This is OK because the namespace is locked)
	 */
	acpi_gbl_root_node = &acpi_gbl_root_node_struct;

	/* Enter the pre-defined names in the name table */

	FUNC0((ACPI_DB_INFO,
			  "Entering predefined entries into namespace\n"));

	for (init_val = acpi_gbl_pre_defined_names; init_val->name; init_val++) {

		/* _OSI is optional for now, will be permanent later */

		if (!FUNC5(init_val->name, "_OSI")
		    && !acpi_gbl_create_osi_method) {
			continue;
		}

		status = FUNC11(NULL, init_val->name, init_val->type,
					ACPI_IMODE_LOAD_PASS2,
					ACPI_NS_NO_UPSEARCH, NULL, &new_node);

		if (FUNC3(status) || (!new_node)) {	/* Must be on same line for code converter */
			FUNC2((AE_INFO, status,
					"Could not create predefined name %s",
					init_val->name));
		}

		/*
		 * Name entered successfully. If entry in pre_defined_names[] specifies
		 * an initial value, create the initial value.
		 */
		if (init_val->val) {
			status = FUNC14(init_val, &val);
			if (FUNC3(status)) {
				FUNC1((AE_INFO,
					    "Could not override predefined %s",
					    init_val->name));
			}

			if (!val) {
				val = init_val->val;
			}

			/*
			 * Entry requests an initial value, allocate a
			 * descriptor for it.
			 */
			obj_desc =
			    FUNC16(init_val->type);
			if (!obj_desc) {
				status = AE_NO_MEMORY;
				goto unlock_and_exit;
			}

			/*
			 * Convert value string from table entry to
			 * internal representation. Only types actually
			 * used for initial values are implemented here.
			 */
			switch (init_val->type) {
			case ACPI_TYPE_METHOD:
				obj_desc->method.param_count =
				    (u8) FUNC8(val);
				obj_desc->common.flags |= AOPOBJ_DATA_VALID;

#if defined (ACPI_ASL_COMPILER)

				/* Save the parameter count for the i_aSL compiler */

				new_node->value = obj_desc->method.param_count;
#else
				/* Mark this as a very SPECIAL method */

				obj_desc->method.method_flags =
				    AML_METHOD_INTERNAL_ONLY;
				obj_desc->method.implementation =
				    acpi_ut_osi_implementation;
#endif
				break;

			case ACPI_TYPE_INTEGER:

				obj_desc->integer.value = FUNC8(val);
				break;

			case ACPI_TYPE_STRING:

				/* Build an object around the static string */

				obj_desc->string.length =
				    (u32) FUNC6(val);
				obj_desc->string.pointer = val;
				obj_desc->common.flags |= AOPOBJ_STATIC_POINTER;
				break;

			case ACPI_TYPE_MUTEX:

				obj_desc->mutex.node = new_node;
				obj_desc->mutex.sync_level =
				    (u8) (FUNC8(val) - 1);

				/* Create a mutex */

				status =
				    FUNC12(&obj_desc->mutex.
							 os_mutex);
				if (FUNC3(status)) {
					FUNC18(obj_desc);
					goto unlock_and_exit;
				}

				/* Special case for ACPI Global Lock */

				if (FUNC5(init_val->name, "_GL_") == 0) {
					acpi_gbl_global_lock_mutex = obj_desc;

					/* Create additional counting semaphore for global lock */

					status =
					    FUNC13(1, 0,
								     &acpi_gbl_global_lock_semaphore);
					if (FUNC3(status)) {
						FUNC18
						    (obj_desc);
						goto unlock_and_exit;
					}
				}
				break;

			default:

				FUNC1((AE_INFO,
					    "Unsupported initial type value %X",
					    init_val->type));
				FUNC18(obj_desc);
				obj_desc = NULL;
				continue;
			}

			/* Store pointer to value descriptor in the Node */

			status = FUNC9(new_node, obj_desc,
						       obj_desc->common.type);

			/* Remove local reference to the object */

			FUNC18(obj_desc);
		}
	}

      unlock_and_exit:
	(void)FUNC17(ACPI_MTX_NAMESPACE);

	/* Save a handle to "_GPE", it is always present */

	if (FUNC7(status)) {
		status = FUNC10(NULL, "\\_GPE", ACPI_NS_NO_UPSEARCH,
					  &acpi_gbl_fadt_gpe_device);
	}

	FUNC19(status);
}