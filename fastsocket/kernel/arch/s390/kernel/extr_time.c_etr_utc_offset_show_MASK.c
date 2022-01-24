#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
struct TYPE_4__ {int buo; } ;
struct TYPE_3__ {int /*<<< orphan*/  v3; } ;
struct etr_aib {TYPE_2__ edf3; TYPE_1__ slsw; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENODATA ; 
 struct etr_aib* FUNC0 (struct sys_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC2(struct sys_device *dev,
			struct sysdev_attribute *attr, char *buf)
{
	struct etr_aib *aib = FUNC0(dev);

	if (!aib || !aib->slsw.v3)
		return -ENODATA;
	return FUNC1(buf, "%i\n", aib->edf3.buo);
}