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
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (unsigned int*) ; 
 int FUNC1 (char*,char*,unsigned int) ; 

__attribute__((used)) static ssize_t FUNC2(struct sys_device *dev,
				struct sysdev_attribute *attr, char *buf)
{
	unsigned int capability;
	int rc;

	rc = FUNC0(&capability);
	if (rc)
		return rc;
	return FUNC1(buf, "%u\n", capability);
}