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
struct channel_path {int /*<<< orphan*/  chpid; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char const*,char*,int*,char*) ; 
 struct channel_path* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				   struct device_attribute *attr,
				   const char *buf, size_t count)
{
	struct channel_path *cp;
	int val;
	char delim;

	if (FUNC2(buf, "%d %c", &val, &delim) != 1)
		return -EINVAL;
	if (val != 0 && val != 1)
		return -EINVAL;
	cp = FUNC3(dev);
	FUNC1(cp->chpid, val);
	FUNC0();

	return count;
}