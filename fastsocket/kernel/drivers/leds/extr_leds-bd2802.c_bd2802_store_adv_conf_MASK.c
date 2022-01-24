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
struct bd2802_led {int /*<<< orphan*/  rwsem; scalar_t__ adf_on; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct bd2802_led*) ; 
 int /*<<< orphan*/  FUNC1 (struct bd2802_led*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct bd2802_led* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
	struct device_attribute *attr, const char *buf, size_t count)
{
	struct bd2802_led *led = FUNC3(FUNC5(dev));

	if (!count)
		return -EINVAL;

	FUNC2(&led->rwsem);
	if (!led->adf_on && !FUNC4(buf, "on", 2))
		FUNC1(led);
	else if (led->adf_on && !FUNC4(buf, "off", 3))
		FUNC0(led);
	FUNC6(&led->rwsem);

	return count;
}