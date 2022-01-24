#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int value; } ;
struct TYPE_5__ {int /*<<< orphan*/ * pointer; scalar_t__ length; } ;
struct TYPE_4__ {int /*<<< orphan*/  pointer; } ;
union acpi_object {TYPE_3__ integer; TYPE_2__ buffer; int /*<<< orphan*/  type; TYPE_1__ string; } ;
typedef  int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
struct acpi_buffer {int /*<<< orphan*/ * pointer; int /*<<< orphan*/  length; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_ROOT_OBJECT ; 
 int /*<<< orphan*/  ACPI_TYPE_BUFFER ; 
 int /*<<< orphan*/  ACPI_TYPE_DEVICE ; 
 int /*<<< orphan*/  ACPI_TYPE_INTEGER ; 
 int /*<<< orphan*/  ACPI_TYPE_STRING ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int FUNC1 (char**) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PPI_VERSION_LEN ; 
 int TPM_PPI_FN_GETACT ; 
 int /*<<< orphan*/  TPM_PPI_FN_VERSION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct acpi_object_list*,struct acpi_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ppi_callback ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*,int,char*) ; 
 int FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tpm_device_name ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
					      struct device_attribute *attr,
					      char *buf)
{
	char version[PPI_VERSION_LEN + 1];
	acpi_handle handle;
	acpi_status status;
	struct acpi_object_list input;
	struct acpi_buffer output = { &ACPI_ALLOCATE_BUFFER, NULL };
	union acpi_object params[4];
	u32 ret;
	char *info[] = {
		"None",
		"Shutdown",
		"Reboot",
		"OS Vendor-specific",
		"Error",
	};
	input.count = 4;
	FUNC5(params, TPM_PPI_FN_VERSION);
	input.pointer = params;
	status = FUNC3(ACPI_TYPE_DEVICE, ACPI_ROOT_OBJECT,
				     ACPI_UINT32_MAX, ppi_callback,
				     tpm_device_name, &handle);
	if (FUNC0(status))
		return -ENXIO;

	status = FUNC2(handle, "_DSM", &input, &output,
					    ACPI_TYPE_STRING);
	if (FUNC0(status))
		return -ENOMEM;
	FUNC8(version,
		((union acpi_object *)output.pointer)->string.pointer,
		PPI_VERSION_LEN);
	/*
	 * PPI spec defines params[3].type as empty package, but some platforms
	 * (e.g. Capella with PPI 1.0) need integer/string/buffer type, so for
	 * compatibility, define params[3].type as buffer, if PPI version < 1.2
	 */
	if (FUNC7(version, "1.2") == -1) {
		params[3].type = ACPI_TYPE_BUFFER;
		params[3].buffer.length =  0;
		params[3].buffer.pointer = NULL;
	}
	params[2].integer.value = TPM_PPI_FN_GETACT;
	FUNC4(output.pointer);
	output.length = ACPI_ALLOCATE_BUFFER;
	output.pointer = NULL;
	status = FUNC2(handle, "_DSM", &input, &output,
					    ACPI_TYPE_INTEGER);
	if (FUNC0(status))
		return -ENOMEM;
	ret = ((union acpi_object *)output.pointer)->integer.value;
	if (ret < FUNC1(info) - 1)
		status = FUNC6(buf, PAGE_SIZE, "%d: %s\n", ret, info[ret]);
	else
		status = FUNC6(buf, PAGE_SIZE, "%d: %s\n", ret,
				   info[FUNC1(info)-1]);
	FUNC4(output.pointer);
	return status;
}