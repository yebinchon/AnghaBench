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
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/ * TMP411_TEMP_LOWEST_MSB ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 scalar_t__ FUNC2 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
	struct device_attribute	*devattr, const char *buf, size_t count)
{
	long val;

	if (FUNC2(buf, 10, &val))
		return -EINVAL;

	if (val != 1) {
		FUNC0(dev, "temp_reset_history value %ld not"
			" supported. Use 1 to reset the history!\n", val);
		return -EINVAL;
	}
	FUNC1(FUNC3(dev),
		TMP411_TEMP_LOWEST_MSB[0], val);

	return count;
}