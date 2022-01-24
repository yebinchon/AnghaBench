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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int bld; } ;
struct TYPE_4__ {TYPE_1__ bios; } ;
struct asd_ha_struct {TYPE_2__ hw_prof; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct asd_ha_struct* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
				       struct device_attribute *attr,char *buf)
{
	struct asd_ha_struct *asd_ha = FUNC0(dev);
	return FUNC1(buf, PAGE_SIZE, "%d\n", asd_ha->hw_prof.bios.bld);
}