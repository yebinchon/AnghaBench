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
struct device {int dummy; } ;
struct bus_type {int /*<<< orphan*/ * dev_attrs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct bus_type *bus, struct device *dev)
{
	int error = 0;
	int i;

	if (!bus->dev_attrs)
		return 0;

	for (i = 0; FUNC0(bus->dev_attrs[i]); i++) {
		error = FUNC1(dev, &bus->dev_attrs[i]);
		if (error) {
			while (--i >= 0)
				FUNC2(dev, &bus->dev_attrs[i]);
			break;
		}
	}
	return error;
}