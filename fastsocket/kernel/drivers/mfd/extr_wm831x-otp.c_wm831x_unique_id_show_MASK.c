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
struct wm831x {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int WM831X_UNIQUE_ID_LEN ; 
 struct wm831x* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (char*,char*,...) ; 
 int FUNC2 (struct wm831x*,char*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				     struct device_attribute *attr, char *buf)
{
	struct wm831x *wm831x = FUNC0(dev);
	int i, rval;
	char id[WM831X_UNIQUE_ID_LEN];
	ssize_t ret = 0;

	rval = FUNC2(wm831x, id);
	if (rval < 0)
		return 0;

	for (i = 0; i < WM831X_UNIQUE_ID_LEN; i++)
		ret += FUNC1(&buf[ret], "%02x", buf[i]);

	ret += FUNC1(&buf[ret], "\n");

	return ret;
}