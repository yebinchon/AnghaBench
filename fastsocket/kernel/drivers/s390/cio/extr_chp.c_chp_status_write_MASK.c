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
struct channel_path {int /*<<< orphan*/  lock; int /*<<< orphan*/  chpid; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 struct channel_path* FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				struct device_attribute *attr,
				const char *buf, size_t count)
{
	struct channel_path *cp = FUNC6(dev);
	char cmd[10];
	int num_args;
	int error;

	num_args = FUNC3(buf, "%5s", cmd);
	if (!num_args)
		return count;

	if (!FUNC5(cmd, "on", 2) || !FUNC4(cmd, "1")) {
		FUNC0(&cp->lock);
		error = FUNC2(cp->chpid, 1);
		FUNC1(&cp->lock);
	} else if (!FUNC5(cmd, "off", 3) || !FUNC4(cmd, "0")) {
		FUNC0(&cp->lock);
		error = FUNC2(cp->chpid, 0);
		FUNC1(&cp->lock);
	} else
		error = -EINVAL;

	return error < 0 ? error : count;
}