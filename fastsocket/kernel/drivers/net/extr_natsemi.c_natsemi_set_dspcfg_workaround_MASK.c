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
struct netdev_private {int dspcfg_workaround; int /*<<< orphan*/  lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 struct netdev_private* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					     struct device_attribute *attr,
					     const char *buf, size_t count)
{
	struct netdev_private *np = FUNC0(FUNC4(dev));
	int new_setting;
	unsigned long flags;

        /* Find out the new setting */
        if (!FUNC3("on", buf, count - 1) || !FUNC3("1", buf, count - 1))
                new_setting = 1;
        else if (!FUNC3("off", buf, count - 1)
                 || !FUNC3("0", buf, count - 1))
		new_setting = 0;
	else
                 return count;

	FUNC1(&np->lock, flags);

	np->dspcfg_workaround = new_setting;

	FUNC2(&np->lock, flags);

	return count;
}