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
struct sysdev_ext_attribute {scalar_t__ var; } ;
struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 long INT_MAX ; 
 long INT_MIN ; 
 long FUNC0 (char const*,char**,int /*<<< orphan*/ ) ; 
 struct sysdev_ext_attribute* FUNC1 (struct sysdev_attribute*) ; 

ssize_t FUNC2(struct sys_device *sysdev,
			   struct sysdev_attribute *attr,
			   const char *buf, size_t size)
{
	struct sysdev_ext_attribute *ea = FUNC1(attr);
	char *end;
	long new = FUNC0(buf, &end, 0);
	if (end == buf || new > INT_MAX || new < INT_MIN)
		return -EINVAL;
	*(int *)(ea->var) = new;
	/* Always return full write size even if we didn't consume all */
	return size;
}