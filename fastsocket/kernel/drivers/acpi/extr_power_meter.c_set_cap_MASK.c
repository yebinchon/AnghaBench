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
struct TYPE_5__ {unsigned long value; } ;
union acpi_object {TYPE_2__ integer; int /*<<< orphan*/  member_0; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {unsigned long max_cap; unsigned long min_cap; } ;
struct acpi_power_meter_resource {unsigned long cap; int /*<<< orphan*/  lock; TYPE_3__* acpi_dev; TYPE_1__ caps; } ;
struct acpi_object_list {int member_0; union acpi_object* member_1; } ;
struct acpi_device {struct acpi_power_meter_resource* driver_data; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_6__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_INTEGER ; 
 int /*<<< orphan*/  AE_INFO ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct acpi_object_list*,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,int,unsigned long*) ; 
 struct acpi_device* FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *devattr,
		       const char *buf, size_t count)
{
	struct acpi_device *acpi_dev = FUNC6(dev);
	struct acpi_power_meter_resource *resource = acpi_dev->driver_data;
	union acpi_object arg0 = { ACPI_TYPE_INTEGER };
	struct acpi_object_list args = { 1, &arg0 };
	int res;
	unsigned long temp;
	unsigned long long data;
	acpi_status status;

	res = FUNC5(buf, 10, &temp);
	if (res)
		return res;

	temp /= 1000;
	if (temp > resource->caps.max_cap || temp < resource->caps.min_cap)
		return -EINVAL;
	arg0.integer.value = temp;

	FUNC3(&resource->lock);
	status = FUNC2(resource->acpi_dev->handle, "_SHL",
				       &args, &data);
	if (!FUNC1(status))
		resource->cap = temp;
	FUNC4(&resource->lock);

	if (FUNC1(status)) {
		FUNC0((AE_INFO, status, "Evaluating _SHL"));
		return -EINVAL;
	}

	/* _SHL returns 0 on success, nonzero otherwise */
	if (data)
		return -EINVAL;

	return count;
}