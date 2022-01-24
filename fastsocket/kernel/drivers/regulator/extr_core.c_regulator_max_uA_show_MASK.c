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
struct regulator_dev {TYPE_1__* constraints; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int max_uA; } ;

/* Variables and functions */
 struct regulator_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
				    struct device_attribute *attr, char *buf)
{
	struct regulator_dev *rdev = FUNC0(dev);

	if (!rdev->constraints)
		return FUNC1(buf, "constraint not defined\n");

	return FUNC1(buf, "%d\n", rdev->constraints->max_uA);
}