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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bmc_device {int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct bmc_device* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				 struct device_attribute *attr,
				 char *buf)
{
	struct bmc_device *bmc = FUNC0(dev);

	return FUNC3(buf, 20, "%u.%u\n",
			FUNC1(&bmc->id),
			FUNC2(&bmc->id));
}