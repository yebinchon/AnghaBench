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
struct wm8350 {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int WM8350_AUX_COEFF ; 
 struct wm8350* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 TYPE_1__* FUNC3 (struct device_attribute*) ; 
 int FUNC4 (struct wm8350*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			    struct device_attribute *attr, char *buf)
{
	struct wm8350 *wm8350 = FUNC1(dev);
	int channel = FUNC3(attr)->index;
	int val;

	val = FUNC4(wm8350, channel, 0, 0) * WM8350_AUX_COEFF;
	val = FUNC0(val, 1000);

	return FUNC2(buf, "%d\n", val);
}