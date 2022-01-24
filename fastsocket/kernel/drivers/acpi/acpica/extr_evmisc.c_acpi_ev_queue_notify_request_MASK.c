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
struct TYPE_6__ {union acpi_operand_object* device_notify; union acpi_operand_object* system_notify; } ;
union acpi_operand_object {TYPE_1__ common_notify; } ;
struct TYPE_8__ {union acpi_operand_object* handler_obj; scalar_t__ value; struct acpi_namespace_node* node; } ;
struct TYPE_7__ {int /*<<< orphan*/  descriptor_type; } ;
union acpi_generic_state {TYPE_3__ notify; TYPE_2__ common; } ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct acpi_namespace_node {int type; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_10__ {scalar_t__ handler; } ;
struct TYPE_9__ {scalar_t__ handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_DESC_TYPE_STATE_NOTIFY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_MAX_SYS_NOTIFY ; 
#define  ACPI_TYPE_DEVICE 130 
#define  ACPI_TYPE_PROCESSOR 129 
#define  ACPI_TYPE_THERMAL 128 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_TYPE ; 
 int /*<<< orphan*/  OSL_NOTIFY_HANDLER ; 
 int /*<<< orphan*/  acpi_ev_notify_dispatch ; 
 TYPE_5__ acpi_gbl_device_notify ; 
 TYPE_4__ acpi_gbl_system_notify ; 
 union acpi_operand_object* FUNC3 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union acpi_generic_state*) ; 
 union acpi_generic_state* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (union acpi_generic_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  ev_queue_notify_request ; 

acpi_status
FUNC9(struct acpi_namespace_node * node,
			     u32 notify_value)
{
	union acpi_operand_object *obj_desc;
	union acpi_operand_object *handler_obj = NULL;
	union acpi_generic_state *notify_info;
	acpi_status status = AE_OK;

	FUNC2(ev_queue_notify_request);

	/*
	 * For value 3 (Ejection Request), some device method may need to be run.
	 * For value 2 (Device Wake) if _PRW exists, the _PS0 method may need
	 *   to be run.
	 * For value 0x80 (Status Change) on the power button or sleep button,
	 *   initiate soft-off or sleep operation?
	 */
	FUNC0((ACPI_DB_INFO,
			  "Dispatching Notify on [%4.4s] Node %p Value 0x%2.2X (%s)\n",
			  FUNC7(node), node, notify_value,
			  FUNC8(notify_value)));

	/* Get the notify object attached to the NS Node */

	obj_desc = FUNC3(node);
	if (obj_desc) {

		/* We have the notify object, Get the right handler */

		switch (node->type) {

			/* Notify allowed only on these types */

		case ACPI_TYPE_DEVICE:
		case ACPI_TYPE_THERMAL:
		case ACPI_TYPE_PROCESSOR:

			if (notify_value <= ACPI_MAX_SYS_NOTIFY) {
				handler_obj =
				    obj_desc->common_notify.system_notify;
			} else {
				handler_obj =
				    obj_desc->common_notify.device_notify;
			}
			break;

		default:

			/* All other types are not supported */

			return (AE_TYPE);
		}
	}

	/*
	 * If there is any handler to run, schedule the dispatcher.
	 * Check for:
	 * 1) Global system notify handler
	 * 2) Global device notify handler
	 * 3) Per-device notify handler
	 */
	if ((acpi_gbl_system_notify.handler &&
	     (notify_value <= ACPI_MAX_SYS_NOTIFY)) ||
	    (acpi_gbl_device_notify.handler &&
	     (notify_value > ACPI_MAX_SYS_NOTIFY)) || handler_obj) {
		notify_info = FUNC5();
		if (!notify_info) {
			return (AE_NO_MEMORY);
		}

		if (!handler_obj) {
			FUNC0((ACPI_DB_INFO,
					  "Executing system notify handler for Notify (%4.4s, %X) "
					  "node %p\n",
					  FUNC7(node),
					  notify_value, node));
		}

		notify_info->common.descriptor_type =
		    ACPI_DESC_TYPE_STATE_NOTIFY;
		notify_info->notify.node = node;
		notify_info->notify.value = (u16) notify_value;
		notify_info->notify.handler_obj = handler_obj;

		status =
		    FUNC4(OSL_NOTIFY_HANDLER, acpi_ev_notify_dispatch,
				    notify_info);
		if (FUNC1(status)) {
			FUNC6(notify_info);
		}
	} else {
		/* There is no notify handler (per-device or system) for this device */

		FUNC0((ACPI_DB_INFO,
				  "No notify handler for Notify (%4.4s, %X) node %p\n",
				  FUNC7(node), notify_value,
				  node));
	}

	return (status);
}