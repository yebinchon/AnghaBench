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
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_4__ {int class; TYPE_1__ dev; struct acpi_smbus_cmi* algo_data; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct acpi_smbus_cmi {scalar_t__ cap_info; TYPE_2__ adapter; int /*<<< orphan*/  handle; scalar_t__ cap_write; scalar_t__ cap_read; } ;
struct acpi_device {struct acpi_smbus_cmi* driver_data; int /*<<< orphan*/  dev; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_SMBUS_HC_CLASS ; 
 int /*<<< orphan*/  ACPI_SMBUS_HC_DEVICE_NAME ; 
 int /*<<< orphan*/  ACPI_TYPE_METHOD ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_CLASS_HWMON ; 
 int I2C_CLASS_SPD ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 char* FUNC0 (struct acpi_device*) ; 
 char* FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  acpi_smbus_cmi_algorithm ; 
 int /*<<< orphan*/  acpi_smbus_cmi_query_methods ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct acpi_smbus_cmi*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_smbus_cmi*) ; 
 struct acpi_smbus_cmi* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct acpi_device *device)
{
	struct acpi_smbus_cmi *smbus_cmi;

	smbus_cmi = FUNC6(sizeof(struct acpi_smbus_cmi), GFP_KERNEL);
	if (!smbus_cmi)
		return -ENOMEM;

	smbus_cmi->handle = device->handle;
	FUNC8(FUNC1(device), ACPI_SMBUS_HC_DEVICE_NAME);
	FUNC8(FUNC0(device), ACPI_SMBUS_HC_CLASS);
	device->driver_data = smbus_cmi;
	smbus_cmi->cap_info = 0;
	smbus_cmi->cap_read = 0;
	smbus_cmi->cap_write = 0;

	FUNC2(ACPI_TYPE_METHOD, smbus_cmi->handle, 1,
			    acpi_smbus_cmi_query_methods, smbus_cmi, NULL);

	if (smbus_cmi->cap_info == 0)
		goto err;

	FUNC7(smbus_cmi->adapter.name, sizeof(smbus_cmi->adapter.name),
		"SMBus CMI adapter %s",
		FUNC1(device));
	smbus_cmi->adapter.owner = THIS_MODULE;
	smbus_cmi->adapter.algo = &acpi_smbus_cmi_algorithm;
	smbus_cmi->adapter.algo_data = smbus_cmi;
	smbus_cmi->adapter.class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
	smbus_cmi->adapter.dev.parent = &device->dev;

	if (FUNC4(&smbus_cmi->adapter)) {
		FUNC3(&device->dev, "Couldn't register adapter!\n");
		goto err;
	}

	return 0;

err:
	FUNC5(smbus_cmi);
	device->driver_data = NULL;
	return -EIO;
}