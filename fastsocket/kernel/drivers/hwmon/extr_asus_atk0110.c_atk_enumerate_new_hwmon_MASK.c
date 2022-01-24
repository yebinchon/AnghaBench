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
struct TYPE_4__ {int count; union acpi_object* elements; } ;
union acpi_object {TYPE_2__ package; } ;
struct device {int dummy; } ;
struct atk_data {int disable_ec; int voltage_count; int temperature_count; int fan_count; TYPE_1__* acpi_dev; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union acpi_object*) ; 
 int /*<<< orphan*/  ATK_MUX_HWMON ; 
 scalar_t__ FUNC1 (union acpi_object*) ; 
 int FUNC2 (union acpi_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct atk_data*,union acpi_object*) ; 
 int FUNC4 (struct atk_data*,int) ; 
 int FUNC5 (struct atk_data*) ; 
 int FUNC6 (struct atk_data*) ; 
 union acpi_object* FUNC7 (struct atk_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*) ; 

__attribute__((used)) static int FUNC9(struct atk_data *data)
{
	struct device *dev = &data->acpi_dev->dev;
	union acpi_object *pack;
	int err;
	int i;

	err = FUNC6(data);
	if (err < 0)
		return err;
	if (err) {
		err = FUNC5(data);
		if (err < 0)
			return err;
		/* If the EC was disabled we will disable it again on unload */
		data->disable_ec = err;

		err = FUNC4(data, 1);
		if (err) {
			data->disable_ec = false;
			return err;
		}
	}

	FUNC8(dev, "Enumerating hwmon sensors\n");

	pack = FUNC7(data, ATK_MUX_HWMON);
	if (FUNC1(pack))
		return FUNC2(pack);

	for (i = 0; i < pack->package.count; i++) {
		union acpi_object *obj = &pack->package.elements[i];

		FUNC3(data, obj);
	}

	err = data->voltage_count + data->temperature_count + data->fan_count;

	FUNC0(pack);
	return err;
}