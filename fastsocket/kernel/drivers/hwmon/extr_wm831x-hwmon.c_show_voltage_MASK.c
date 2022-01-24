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
struct wm831x_hwmon {int /*<<< orphan*/  wm831x; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 struct wm831x_hwmon* FUNC1 (struct device*) ; 
 int FUNC2 (char*,char*,int) ; 
 TYPE_1__* FUNC3 (struct device_attribute*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			    struct device_attribute *attr, char *buf)
{
	struct wm831x_hwmon *hwmon = FUNC1(dev);
	int channel = FUNC3(attr)->index;
	int ret;

	ret = FUNC4(hwmon->wm831x, channel);
	if (ret < 0)
		return ret;

	return FUNC2(buf, "%d\n", FUNC0(ret, 1000));
}