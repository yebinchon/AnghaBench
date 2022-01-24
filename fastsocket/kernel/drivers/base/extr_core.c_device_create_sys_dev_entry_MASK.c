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
struct kobject {int dummy; } ;
struct device {int /*<<< orphan*/  kobj; int /*<<< orphan*/  devt; } ;

/* Variables and functions */
 struct kobject* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct kobject*,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct kobject *kobj = FUNC0(dev);
	int error = 0;
	char devt_str[15];

	if (kobj) {
		FUNC1(devt_str, dev->devt);
		error = FUNC2(kobj, &dev->kobj, devt_str);
	}

	return error;
}