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
struct prod_dev_id {unsigned int product_id; unsigned char device_id; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct bmc_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  __find_bmc_prod_dev_id ; 
 struct bmc_device* FUNC0 (struct device*) ; 
 struct device* FUNC1 (struct device_driver*,int /*<<< orphan*/ *,struct prod_dev_id*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct bmc_device *FUNC2(
	struct device_driver *drv,
	unsigned int product_id, unsigned char device_id)
{
	struct prod_dev_id id = {
		.product_id = product_id,
		.device_id = device_id,
	};
	struct device *dev;

	dev = FUNC1(drv, NULL, &id, __find_bmc_prod_dev_id);
	if (dev)
		return FUNC0(dev);
	else
		return NULL;
}