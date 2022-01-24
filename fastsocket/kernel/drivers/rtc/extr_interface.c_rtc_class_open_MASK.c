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
struct rtc_device {int /*<<< orphan*/  owner; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  __rtc_match ; 
 struct device* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  rtc_class ; 
 struct rtc_device* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

struct rtc_device *FUNC4(char *name)
{
	struct device *dev;
	struct rtc_device *rtc = NULL;

	dev = FUNC0(rtc_class, NULL, name, __rtc_match);
	if (dev)
		rtc = FUNC2(dev);

	if (rtc) {
		if (!FUNC3(rtc->owner)) {
			FUNC1(dev);
			rtc = NULL;
		}
	}

	return rtc;
}