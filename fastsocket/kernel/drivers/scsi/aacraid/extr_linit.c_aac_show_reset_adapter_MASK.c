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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aac_dev {scalar_t__ in_reset; } ;
typedef  int ssize_t ;
struct TYPE_2__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct aac_dev*) ; 
 TYPE_1__* FUNC1 (struct device*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *device,
				      struct device_attribute *attr,
				      char *buf)
{
	struct aac_dev *dev = (struct aac_dev*)FUNC1(device)->hostdata;
	int len, tmp;

	tmp = FUNC0(dev);
	if ((tmp == 0) && dev->in_reset)
		tmp = -EBUSY;
	len = FUNC2(buf, PAGE_SIZE, "0x%x\n", tmp);
	return len;
}