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
struct net_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int FUNC0 (struct net_device*,char const*) ; 
 size_t FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct net_device* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *d, struct device_attribute *attr,
			const char *buf, size_t count)
{
	struct net_device *dev = FUNC4(d);
	int ret;

	if (!FUNC2())
		return FUNC1();

	ret = FUNC0(dev, buf);

	FUNC3();

	if (!ret)
		return count;

	return ret;
}