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
struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; int /*<<< orphan*/  type; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_INTEGER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct acpi_object_list*,unsigned long long*) ; 
 int /*<<< orphan*/  kled_get_handle ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(void)
{
	unsigned long long kblv;
	struct acpi_object_list params;
	union acpi_object in_obj;
	acpi_status rv;

	params.count = 1;
	params.pointer = &in_obj;
	in_obj.type = ACPI_TYPE_INTEGER;
	in_obj.integer.value = 2;

	rv = FUNC1(kled_get_handle, NULL, &params, &kblv);
	if (FUNC0(rv)) {
		FUNC2("Error reading kled level\n");
		return 0;
	}
	return kblv;
}