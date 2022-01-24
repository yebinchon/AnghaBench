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
struct gendisk {struct dasd_devmap* private_data; } ;
struct dasd_devmap {struct dasd_device* device; } ;
struct dasd_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  dasd_devmap_lock ; 
 int /*<<< orphan*/  FUNC0 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct dasd_device *FUNC3(struct gendisk *gdp)
{
	struct dasd_device *device;
	struct dasd_devmap *devmap;

	if (!gdp->private_data)
		return NULL;
	device = NULL;
	FUNC1(&dasd_devmap_lock);
	devmap = gdp->private_data;
	if (devmap && devmap->device) {
		device = devmap->device;
		FUNC0(device);
	}
	FUNC2(&dasd_devmap_lock);
	return device;
}