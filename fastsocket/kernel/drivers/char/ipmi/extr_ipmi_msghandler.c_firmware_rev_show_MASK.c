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
struct TYPE_2__ {int firmware_revision_1; int firmware_revision_2; } ;
struct bmc_device {TYPE_1__ id; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct bmc_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int,int) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
				 struct device_attribute *attr,
				 char *buf)
{
	struct bmc_device *bmc = FUNC0(dev);

	return FUNC1(buf, 20, "%u.%x\n", bmc->id.firmware_revision_1,
			bmc->id.firmware_revision_2);
}