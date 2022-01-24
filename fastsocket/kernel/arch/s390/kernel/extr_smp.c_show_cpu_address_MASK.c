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
struct sys_device {size_t id; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int* __cpu_logical_map ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC1(struct sys_device *dev,
				struct sysdev_attribute *attr, char *buf)
{
	return FUNC0(buf, "%d\n", __cpu_logical_map[dev->id]);
}