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
struct TYPE_2__ {void* pointer; } ;
union acpi_object {scalar_t__ type; TYPE_1__ buffer; } ;
typedef  scalar_t__ u32 ;
struct acpi_subtable_header {int type; } ;
struct acpi_madt_io_sapic {scalar_t__ global_irq_base; } ;
struct acpi_madt_io_apic {scalar_t__ global_irq_base; } ;
struct acpi_buffer {union acpi_object* pointer; int /*<<< orphan*/  length; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
#define  ACPI_MADT_TYPE_IO_APIC 129 
#define  ACPI_MADT_TYPE_IO_SAPIC 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_TYPE_BUFFER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,struct acpi_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (union acpi_object*) ; 

__attribute__((used)) static int FUNC5(acpi_handle handle, u32 *gsi_base)
{
	acpi_status status;
	int result = -1;
	unsigned long long gsb;
	struct acpi_buffer buffer = {ACPI_ALLOCATE_BUFFER, NULL};
	union acpi_object *obj;
	void *table;

	status = FUNC2(handle, "_GSB", NULL, &gsb);
	if (FUNC1(status)) {
		*gsi_base = (u32)gsb;
		return 0;
	}

	status = FUNC3(handle, "_MAT", NULL, &buffer);
	if (FUNC0(status) || !buffer.length || !buffer.pointer)
		return -1;

	obj = buffer.pointer;
	if (obj->type != ACPI_TYPE_BUFFER)
		goto out;

	table = obj->buffer.pointer;
	switch (((struct acpi_subtable_header *)table)->type) {
	case ACPI_MADT_TYPE_IO_SAPIC:
		*gsi_base = ((struct acpi_madt_io_sapic *)table)->global_irq_base;
		result = 0;
		break;
	case ACPI_MADT_TYPE_IO_APIC:
		*gsi_base = ((struct acpi_madt_io_apic *)table)->global_irq_base;
		result = 0;
		break;
	default:
		break;
	}
 out:
	FUNC4(buffer.pointer);
	return result;
}