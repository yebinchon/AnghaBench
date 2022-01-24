#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct aem_ipmi_data {int /*<<< orphan*/  interface; int /*<<< orphan*/  bmc_device; } ;
struct TYPE_13__ {int /*<<< orphan*/  user; int /*<<< orphan*/  bmc_device; } ;
struct aem_data {int ver_major; int /*<<< orphan*/  id; TYPE_1__* pdev; TYPE_8__ ipmi; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  module_handle; scalar_t__ ver_minor; int /*<<< orphan*/  list; int /*<<< orphan*/  update; int /*<<< orphan*/ * power_period; int /*<<< orphan*/  lock; } ;
struct TYPE_14__ {int /*<<< orphan*/  driver; } ;
struct TYPE_12__ {int /*<<< orphan*/  aem_devices; } ;
struct TYPE_11__ {int /*<<< orphan*/ * driver; } ;
struct TYPE_10__ {TYPE_4__ dev; } ;

/* Variables and functions */
 int AEM1_NUM_ENERGY_REGS ; 
 int /*<<< orphan*/  AEM_DEFAULT_POWER_INTERVAL ; 
 int /*<<< orphan*/  DRVNAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct aem_data*) ; 
 TYPE_9__ aem_driver ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,struct aem_data*) ; 
 TYPE_5__ driver_data ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct aem_data*) ; 
 struct aem_data* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (TYPE_1__*) ; 
 TYPE_1__* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  update_aem1_sensors ; 

__attribute__((used)) static int FUNC18(struct aem_ipmi_data *probe, u8 module_handle)
{
	struct aem_data *data;
	int i;
	int res = -ENOMEM;

	data = FUNC12(sizeof(*data), GFP_KERNEL);
	if (!data)
		return res;
	FUNC14(&data->lock);

	/* Copy instance data */
	data->ver_major = 1;
	data->ver_minor = 0;
	data->module_handle = module_handle;
	for (i = 0; i < AEM1_NUM_ENERGY_REGS; i++)
		data->power_period[i] = AEM_DEFAULT_POWER_INTERVAL;

	/* Create sub-device for this fw instance */
	if (FUNC2(&data->id))
		goto id_err;

	data->pdev = FUNC16(DRVNAME, data->id);
	if (!data->pdev)
		goto dev_err;
	data->pdev->dev.driver = &aem_driver.driver;

	res = FUNC15(data->pdev);
	if (res)
		goto ipmi_err;

	FUNC7(&data->pdev->dev, data);

	/* Set up IPMI interface */
	if (FUNC4(&data->ipmi, probe->interface,
			       probe->bmc_device))
		goto ipmi_err;

	/* Register with hwmon */
	data->hwmon_dev = FUNC8(&data->pdev->dev);

	if (FUNC0(data->hwmon_dev)) {
		FUNC5(&data->pdev->dev, "Unable to register hwmon "
			"device for IPMI interface %d\n",
			probe->interface);
		goto hwmon_reg_err;
	}

	data->update = update_aem1_sensors;

	/* Find sensors */
	if (FUNC1(data))
		goto sensor_err;

	/* Add to our list of AEM devices */
	FUNC13(&data->list, &driver_data.aem_devices);

	FUNC6(data->ipmi.bmc_device, "Found AEM v%d.%d at 0x%X\n",
		 data->ver_major, data->ver_minor,
		 data->module_handle);
	return 0;

sensor_err:
	FUNC9(data->hwmon_dev);
hwmon_reg_err:
	FUNC10(data->ipmi.user);
ipmi_err:
	FUNC7(&data->pdev->dev, NULL);
	FUNC17(data->pdev);
dev_err:
	FUNC3(data->id);
id_err:
	FUNC11(data);

	return res;
}