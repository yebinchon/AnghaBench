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
struct TYPE_6__ {int count; TYPE_2__* elements; } ;
union acpi_object {TYPE_3__ package; } ;
struct atk_data {int disable_ec; int old_interface; int /*<<< orphan*/  atk_handle; int /*<<< orphan*/  sensor_list; struct acpi_device* acpi_dev; } ;
struct acpi_device {struct atk_data* driver_data; int /*<<< orphan*/  dev; int /*<<< orphan*/  handle; } ;
struct acpi_buffer {union acpi_object* pointer; int /*<<< orphan*/  length; } ;
typedef  scalar_t__ acpi_status ;
struct TYPE_4__ {int /*<<< orphan*/  pointer; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ string; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (union acpi_object*) ; 
 int /*<<< orphan*/  ACPI_TYPE_PACKAGE ; 
 scalar_t__ ACPI_TYPE_STRING ; 
 scalar_t__ AE_OK ; 
 int /*<<< orphan*/  BOARD_ID ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct acpi_buffer*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct atk_data*) ; 
 int FUNC4 (struct atk_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct atk_data*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct atk_data*) ; 
 int FUNC7 (struct atk_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct atk_data*) ; 
 int FUNC9 (struct atk_data*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct atk_data*) ; 
 struct atk_data* FUNC13 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct acpi_device *device)
{
	acpi_status ret;
	int err;
	struct acpi_buffer buf;
	union acpi_object *obj;
	struct atk_data *data;

	FUNC10(&device->dev, "adding...\n");

	data = FUNC13(sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->acpi_dev = device;
	data->atk_handle = device->handle;
	FUNC1(&data->sensor_list);
	data->disable_ec = false;

	buf.length = ACPI_ALLOCATE_BUFFER;
	ret = FUNC2(data->atk_handle, BOARD_ID, NULL,
			&buf, ACPI_TYPE_PACKAGE);
	if (ret != AE_OK) {
		FUNC10(&device->dev, "atk: method MBIF not found\n");
		err = -ENODEV;
		goto out;
	}

	obj = buf.pointer;
	if (obj->package.count >= 2 &&
			obj->package.elements[1].type == ACPI_TYPE_STRING) {
		FUNC10(&device->dev, "board ID = %s\n",
				obj->package.elements[1].string.pointer);
	}
	FUNC0(buf.pointer);

	/* Check for hwmon methods: first check "old" style methods; note that
	 * both may be present: in this case we stick to the old interface;
	 * analysis of multiple DSDTs indicates that when both interfaces
	 * are present the new one (GGRP/GITM) is not functional.
	 */
	err = FUNC4(data);
	if (!err) {
		FUNC10(&device->dev, "Using old hwmon interface\n");
		data->old_interface = true;
	} else {
		err = FUNC3(data);
		if (err)
			goto out;

		FUNC10(&device->dev, "Using new hwmon interface\n");
		data->old_interface = false;
	}

	if (data->old_interface)
		err = FUNC7(data);
	else
		err = FUNC6(data);
	if (err < 0)
		goto out;
	if (err == 0) {
		FUNC11(&device->dev,
			 "No usable sensor detected, bailing out\n");
		err = -ENODEV;
		goto out;
	}

	err = FUNC9(data);
	if (err)
		goto cleanup;

	device->driver_data = data;
	return 0;
cleanup:
	FUNC8(data);
out:
	if (data->disable_ec)
		FUNC5(data, 0);
	FUNC12(data);
	return err;
}