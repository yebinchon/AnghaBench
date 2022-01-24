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
struct isa_driver {int /*<<< orphan*/  driver; struct device* devices; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (struct device*) ; 

void FUNC3(struct isa_driver *isa_driver)
{
	struct device *dev = isa_driver->devices;

	while (dev) {
		struct device *tmp = FUNC2(dev)->next;
		FUNC0(dev);
		dev = tmp;
	}
	FUNC1(&isa_driver->driver);
}