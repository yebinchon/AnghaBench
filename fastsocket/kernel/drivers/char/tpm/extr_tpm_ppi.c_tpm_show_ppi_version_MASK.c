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
struct TYPE_2__ {int /*<<< orphan*/  pointer; } ;
union acpi_object {TYPE_1__ string; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
struct acpi_buffer {scalar_t__ pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_ROOT_OBJECT ; 
 int /*<<< orphan*/  ACPI_TYPE_DEVICE ; 
 int /*<<< orphan*/  ACPI_TYPE_STRING ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  TPM_PPI_FN_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct acpi_object_list*,struct acpi_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (union acpi_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ppi_callback ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tpm_device_name ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				    struct device_attribute *attr, char *buf)
{
	acpi_handle handle;
	acpi_status status;
	struct acpi_object_list input;
	struct acpi_buffer output = { ACPI_ALLOCATE_BUFFER, NULL };
	union acpi_object params[4];
	union acpi_object *obj;

	input.count = 4;
	FUNC4(params, TPM_PPI_FN_VERSION);
	input.pointer = params;
	status = FUNC2(ACPI_TYPE_DEVICE, ACPI_ROOT_OBJECT,
				     ACPI_UINT32_MAX, ppi_callback,
				     tpm_device_name, &handle);
	if (FUNC0(status))
		return -ENXIO;

	status = FUNC1(handle, "_DSM", &input, &output,
					 ACPI_TYPE_STRING);
	if (FUNC0(status))
		return -ENOMEM;
	obj = (union acpi_object *)output.pointer;
	status = FUNC5(buf, PAGE_SIZE, "%s\n", obj->string.pointer);
	FUNC3(output.pointer);
	return status;
}