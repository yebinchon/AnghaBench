#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct acpi_evaluate_info {TYPE_2__* resolved_node; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_3__ {scalar_t__ integer; } ;
struct TYPE_4__ {TYPE_1__ name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ACPI_MTX_NAMESPACE ; 
 int /*<<< orphan*/  acpi_dbg_layer ; 
 int /*<<< orphan*/  acpi_dbg_level ; 
 int /*<<< orphan*/  acpi_gbl_original_dbg_layer ; 
 int /*<<< orphan*/  acpi_gbl_original_dbg_level ; 
 scalar_t__ acpi_gbl_trace_dbg_layer ; 
 scalar_t__ acpi_gbl_trace_dbg_level ; 
 int acpi_gbl_trace_flags ; 
 scalar_t__ acpi_gbl_trace_method_name ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct acpi_evaluate_info *info)
{
	acpi_status status;

	FUNC1();

	status = FUNC2(ACPI_MTX_NAMESPACE);
	if (FUNC0(status)) {
		return;
	}

	if ((!acpi_gbl_trace_method_name) ||
	    (acpi_gbl_trace_method_name != info->resolved_node->name.integer)) {
		goto exit;
	}

	/* Disable further tracing if type is one-shot */

	if (acpi_gbl_trace_flags & 1) {
		acpi_gbl_trace_method_name = 0;
		acpi_gbl_trace_dbg_level = 0;
		acpi_gbl_trace_dbg_layer = 0;
	}

	acpi_dbg_level = acpi_gbl_original_dbg_level;
	acpi_dbg_layer = acpi_gbl_original_dbg_layer;

      exit:
	(void)FUNC3(ACPI_MTX_NAMESPACE);
}