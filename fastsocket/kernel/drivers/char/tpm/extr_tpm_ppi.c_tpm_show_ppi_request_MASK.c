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
struct TYPE_4__ {scalar_t__ value; } ;
struct TYPE_3__ {union acpi_object* elements; } ;
union acpi_object {scalar_t__ type; TYPE_2__ integer; TYPE_1__ package; } ;
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
 scalar_t__ ACPI_TYPE_INTEGER ; 
 int /*<<< orphan*/  ACPI_TYPE_PACKAGE ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  EFAULT ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  TPM_PPI_FN_GETREQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct acpi_object_list*,struct acpi_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (union acpi_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ppi_callback ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  tpm_device_name ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				    struct device_attribute *attr, char *buf)
{
	acpi_handle handle;
	acpi_status status;
	struct acpi_object_list input;
	struct acpi_buffer output = { ACPI_ALLOCATE_BUFFER, NULL };
	union acpi_object params[4];
	union acpi_object *ret_obj;

	input.count = 4;
	FUNC4(params, TPM_PPI_FN_GETREQ);
	input.pointer = params;
	status = FUNC2(ACPI_TYPE_DEVICE, ACPI_ROOT_OBJECT,
				     ACPI_UINT32_MAX, ppi_callback,
				     tpm_device_name, &handle);
	if (FUNC0(status))
		return -ENXIO;

	status = FUNC1(handle, "_DSM", &input, &output,
					    ACPI_TYPE_PACKAGE);
	if (FUNC0(status))
		return -ENOMEM;
	/*
	 * output.pointer should be of package type, including two integers.
	 * The first is function return code, 0 means success and 1 means
	 * error. The second is pending TPM operation requested by the OS, 0
	 * means none and >0 means operation value.
	 */
	ret_obj = ((union acpi_object *)output.pointer)->package.elements;
	if (ret_obj->type == ACPI_TYPE_INTEGER) {
		if (ret_obj->integer.value) {
			status = -EFAULT;
			goto cleanup;
		}
		ret_obj++;
		if (ret_obj->type == ACPI_TYPE_INTEGER)
			status = FUNC5(buf, PAGE_SIZE, "%llu\n",
					   ret_obj->integer.value);
		else
			status = -EINVAL;
	} else {
		status = -EINVAL;
	}
cleanup:
	FUNC3(output.pointer);
	return status;
}