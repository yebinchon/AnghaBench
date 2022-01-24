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
struct acpi_device {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  METHOD_HKEY_SQTY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long long*) ; 

__attribute__((used)) static inline int FUNC3(struct acpi_device *device)
{
	unsigned long long s;
	acpi_status status;

	status = FUNC2(device->handle, METHOD_HKEY_SQTY,
				       NULL, &s);
	if (FUNC1(status))
		return s;
	else {
		FUNC0((ACPI_DB_ERROR,
				  "evaluation error HKEY.SQTY\n"));
		return -EINVAL;
	}
}