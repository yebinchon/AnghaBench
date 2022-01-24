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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_devmap {scalar_t__ device; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dasd_devmap*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (scalar_t__) ; 
 struct dasd_devmap* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct dasd_devmap *devmap;
	int eer_flag;

	devmap = FUNC2(FUNC3(dev));
	if (!FUNC0(devmap) && devmap->device)
		eer_flag = FUNC1(devmap->device);
	else
		eer_flag = 0;
	return FUNC4(buf, PAGE_SIZE, eer_flag ? "1\n" : "0\n");
}