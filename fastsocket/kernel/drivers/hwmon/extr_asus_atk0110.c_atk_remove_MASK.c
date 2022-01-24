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
struct atk_data {scalar_t__ disable_ec; int /*<<< orphan*/  hwmon_dev; } ;
struct acpi_device {int /*<<< orphan*/  dev; struct atk_data* driver_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct atk_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atk_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct atk_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct atk_data*) ; 

__attribute__((used)) static int FUNC7(struct acpi_device *device, int type)
{
	struct atk_data *data = device->driver_data;
	FUNC3(&device->dev, "removing...\n");

	device->driver_data = NULL;

	FUNC2(data);
	FUNC1(data);
	FUNC5(data->hwmon_dev);

	if (data->disable_ec) {
		if (FUNC0(data, 0))
			FUNC4(&device->dev, "Failed to disable EC\n");
	}

	FUNC6(data);

	return 0;
}