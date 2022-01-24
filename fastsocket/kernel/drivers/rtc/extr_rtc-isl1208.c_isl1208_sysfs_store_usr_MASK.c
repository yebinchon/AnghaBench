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
 size_t EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *dev,
			struct device_attribute *attr,
			const char *buf, size_t count)
{
	int usr = -1;

	if (buf[0] == '0' && (buf[1] == 'x' || buf[1] == 'X')) {
		if (FUNC1(buf, "%x", &usr) != 1)
			return -EINVAL;
	} else {
		if (FUNC1(buf, "%d", &usr) != 1)
			return -EINVAL;
	}

	if (usr < 0 || usr > 0xffff)
		return -EINVAL;

	return FUNC0(FUNC2(dev), usr) ? -EIO : count;
}