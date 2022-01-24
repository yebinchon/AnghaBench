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
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  applesmc_lock ; 
 int /*<<< orphan*/  key_at_index ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				struct device_attribute *attr, char *sysfsbuf)
{
	char key[5];
	char info[6];
	int ret;

	FUNC2(&applesmc_lock);

	ret = FUNC0(key_at_index, key);

	if (ret || !key[0]) {
		FUNC3(&applesmc_lock);

		return -EINVAL;
	}

	ret = FUNC1(key, info);

	FUNC3(&applesmc_lock);

	if (!ret)
		return FUNC4(sysfsbuf, PAGE_SIZE, "%s\n", info+1);
	else
		return ret;
}