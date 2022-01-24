#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct axon_ram_bank* platform_data; } ;
struct of_device {TYPE_1__ dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct axon_ram_bank {int /*<<< orphan*/  ecc_counter; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 struct of_device* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct of_device *device = FUNC2(dev);
	struct axon_ram_bank *bank = device->dev.platform_data;

	FUNC0(!bank);

	return FUNC1(buf, "%ld\n", bank->ecc_counter);
}