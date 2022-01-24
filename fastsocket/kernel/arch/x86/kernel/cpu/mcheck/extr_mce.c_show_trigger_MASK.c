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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  mce_helper ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC3(struct sys_device *s, struct sysdev_attribute *attr, char *buf)
{
	FUNC1(buf, mce_helper);
	FUNC0(buf, "\n");
	return FUNC2(mce_helper) + 1;
}