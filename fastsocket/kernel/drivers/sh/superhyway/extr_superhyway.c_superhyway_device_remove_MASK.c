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
struct superhyway_driver {int /*<<< orphan*/  (* remove ) (struct superhyway_device*) ;} ;
struct superhyway_device {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct superhyway_device*) ; 
 struct superhyway_device* FUNC1 (struct device*) ; 
 struct superhyway_driver* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct superhyway_device *shyway_dev = FUNC1(dev);
	struct superhyway_driver *shyway_drv = FUNC2(dev->driver);

	if (shyway_drv && shyway_drv->remove) {
		shyway_drv->remove(shyway_dev);
		return 0;
	}

	return -ENODEV;
}