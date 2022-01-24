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
struct rio_driver {int (* probe ) (struct rio_dev*,struct rio_device_id const*) ;int /*<<< orphan*/  id_table; } ;
struct rio_device_id {int dummy; } ;
struct rio_dev {struct rio_driver* driver; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct rio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct rio_dev*) ; 
 struct rio_device_id* FUNC2 (int /*<<< orphan*/ ,struct rio_dev*) ; 
 int FUNC3 (struct rio_dev*,struct rio_device_id const*) ; 
 struct rio_dev* FUNC4 (struct device*) ; 
 struct rio_driver* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct rio_driver *rdrv = FUNC5(dev->driver);
	struct rio_dev *rdev = FUNC4(dev);
	int error = -ENODEV;
	const struct rio_device_id *id;

	if (!rdev->driver && rdrv->probe) {
		if (!rdrv->id_table)
			return error;
		id = FUNC2(rdrv->id_table, rdev);
		FUNC0(rdev);
		if (id)
			error = rdrv->probe(rdev, id);
		if (error >= 0) {
			rdev->driver = rdrv;
			error = 0;
		} else
			FUNC1(rdev);
	}
	return error;
}