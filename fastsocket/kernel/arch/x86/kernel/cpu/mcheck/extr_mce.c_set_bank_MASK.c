#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  ctl; } ;

/* Variables and functions */
 size_t EINVAL ; 
 TYPE_1__* FUNC0 (struct sysdev_attribute*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC3(struct sys_device *s, struct sysdev_attribute *attr,
			const char *buf, size_t size)
{
	u64 new;

	if (FUNC2(buf, 0, &new) < 0)
		return -EINVAL;

	FUNC0(attr)->ctl = new;
	FUNC1();

	return size;
}