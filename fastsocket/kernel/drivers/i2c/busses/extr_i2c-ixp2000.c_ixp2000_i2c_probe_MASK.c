#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* driver; struct ixp2000_i2c_pins* platform_data; } ;
struct platform_device {TYPE_5__ dev; } ;
struct ixp2000_i2c_pins {int /*<<< orphan*/  sda_pin; int /*<<< orphan*/  scl_pin; } ;
struct TYPE_8__ {TYPE_5__* parent; } ;
struct TYPE_9__ {TYPE_3__ dev; TYPE_2__* algo_data; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int udelay; int /*<<< orphan*/  timeout; int /*<<< orphan*/  getscl; int /*<<< orphan*/  getsda; int /*<<< orphan*/  setscl; int /*<<< orphan*/  setsda; struct ixp2000_i2c_pins* data; } ;
struct ixp2000_i2c_data {TYPE_4__ adapter; TYPE_2__ algo_data; struct ixp2000_i2c_pins* gpio_pins; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIO_IN ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  ixp2000_bit_getscl ; 
 int /*<<< orphan*/  ixp2000_bit_getsda ; 
 int /*<<< orphan*/  ixp2000_bit_setscl ; 
 int /*<<< orphan*/  ixp2000_bit_setsda ; 
 int /*<<< orphan*/  FUNC4 (struct ixp2000_i2c_data*) ; 
 struct ixp2000_i2c_data* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct ixp2000_i2c_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct platform_device *plat_dev)
{
	int err;
	struct ixp2000_i2c_pins *gpio = plat_dev->dev.platform_data;
	struct ixp2000_i2c_data *drv_data = 
		FUNC5(sizeof(struct ixp2000_i2c_data), GFP_KERNEL);

	if (!drv_data)
		return -ENOMEM;
	drv_data->gpio_pins = gpio;

	drv_data->algo_data.data = gpio;
	drv_data->algo_data.setsda = ixp2000_bit_setsda;
	drv_data->algo_data.setscl = ixp2000_bit_setscl;
	drv_data->algo_data.getsda = ixp2000_bit_getsda;
	drv_data->algo_data.getscl = ixp2000_bit_getscl;
	drv_data->algo_data.udelay = 6;
	drv_data->algo_data.timeout = HZ;

	FUNC7(drv_data->adapter.name, plat_dev->dev.driver->name,
		sizeof(drv_data->adapter.name));
	drv_data->adapter.algo_data = &drv_data->algo_data,

	drv_data->adapter.dev.parent = &plat_dev->dev;

	FUNC1(gpio->sda_pin, GPIO_IN);
	FUNC1(gpio->scl_pin, GPIO_IN);
	FUNC2(gpio->scl_pin, 0);
	FUNC2(gpio->sda_pin, 0);

	if ((err = FUNC3(&drv_data->adapter)) != 0) {
		FUNC0(&plat_dev->dev, "Could not install, error %d\n", err);
		FUNC4(drv_data);
		return err;
	} 

	FUNC6(plat_dev, drv_data);

	return 0;
}