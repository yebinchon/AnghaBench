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
struct file_operations {int dummy; } ;
struct device {int dummy; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,char*,struct file_operations const*,struct cdev**,struct device**) ; 

int FUNC1(int minor, char *name, const struct file_operations *fops,
		    struct cdev **cdevp, struct device **devp)
{
	return FUNC0(minor, name, fops, cdevp, devp);
}