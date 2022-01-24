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
struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct sys_device*,struct sysdev_attribute*,char const*,size_t) ; 

__attribute__((used)) static ssize_t FUNC2(struct sys_device *s,
				      struct sysdev_attribute *attr,
				      const char *buf, size_t size)
{
	ssize_t ret = FUNC1(s, attr, buf, size);
	FUNC0();
	return ret;
}