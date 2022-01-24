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
 size_t EPERM ; 
 scalar_t__ FUNC0 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
			    struct device_attribute *attr,
			    const char *buf, size_t count)
{
	unsigned long t;

	FUNC1("hotkey_enable",
			"Hotkeys can be disabled through hotkey_mask");

	if (FUNC0(buf, 1, &t))
		return -EINVAL;

	if (t == 0)
		return -EPERM;

	return count;
}