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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cmb_data {long last_update; } ;
struct ccw_device {int /*<<< orphan*/  ccwlock; TYPE_1__* private; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {long cmb_start_time; struct cmb_data* cmb; } ;

/* Variables and functions */
 int /*<<< orphan*/  cmb_sample_count ; 
 unsigned long FUNC0 (struct ccw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,long) ; 
 struct ccw_device* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					    struct device_attribute *attr,
					    char *buf)
{
	struct ccw_device *cdev;
	long interval;
	unsigned long count;
	struct cmb_data *cmb_data;

	cdev = FUNC4(dev);
	count = FUNC0(cdev, cmb_sample_count);
	FUNC1(cdev->ccwlock);
	cmb_data = cdev->private->cmb;
	if (count) {
		interval = cmb_data->last_update -
			cdev->private->cmb_start_time;
		interval = (interval * 1000) >> 12;
		interval /= count;
	} else
		interval = -1;
	FUNC2(cdev->ccwlock);
	return FUNC3(buf, "%ld\n", interval);
}