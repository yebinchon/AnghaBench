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
struct fw_unit {int dummy; } ;
struct fw_driver {int /*<<< orphan*/  (* update ) (struct fw_unit*) ;} ;
struct device {int /*<<< orphan*/  sem; scalar_t__ driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct fw_unit* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_unit*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct device *dev, void *data)
{
	struct fw_unit *unit = FUNC1(dev);
	struct fw_driver *driver = (struct fw_driver *)dev->driver;

	if (FUNC2(dev) && driver != NULL && driver->update != NULL) {
		FUNC0(&dev->sem);
		driver->update(unit);
		FUNC4(&dev->sem);
	}

	return 0;
}