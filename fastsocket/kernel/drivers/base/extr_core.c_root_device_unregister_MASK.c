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
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct root_device {TYPE_1__ dev; scalar_t__ owner; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct root_device* FUNC2 (struct device*) ; 

void FUNC3(struct device *dev)
{
	struct root_device *root = FUNC2(dev);

	if (root->owner)
		FUNC1(&root->dev.kobj, "module");

	FUNC0(dev);
}