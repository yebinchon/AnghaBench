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
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,unsigned long) ; 
 struct sysdev_ext_attribute* FUNC1 (struct sysdev_attribute*) ; 

ssize_t FUNC2(struct sys_device *sysdev,
			  struct sysdev_attribute *attr,
			  char *buf)
{
	struct sysdev_ext_attribute *ea = FUNC1(attr);
	return FUNC0(buf, PAGE_SIZE, "%lx\n", *(unsigned long *)(ea->var));
}