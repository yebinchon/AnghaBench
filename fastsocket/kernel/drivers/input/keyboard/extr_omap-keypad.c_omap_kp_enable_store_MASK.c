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
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  INT_KEYBOARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int kp_enable ; 
 int /*<<< orphan*/  kp_enable_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,size_t) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *attr,
				    const char *buf, size_t count)
{
	int state;

	if (FUNC4(buf, "%u", &state) != 1)
		return -EINVAL;

	if ((state != 1) && (state != 0))
		return -EINVAL;

	FUNC2(&kp_enable_mutex);
	if (state != kp_enable) {
		if (state)
			FUNC1(INT_KEYBOARD);
		else
			FUNC0(INT_KEYBOARD);
		kp_enable = state;
	}
	FUNC3(&kp_enable_mutex);

	return FUNC5(buf, count);
}