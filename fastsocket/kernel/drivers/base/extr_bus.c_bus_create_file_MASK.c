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
struct bus_type {TYPE_2__* p; } ;
struct bus_attribute {int /*<<< orphan*/  attr; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_4__ {TYPE_1__ subsys; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct bus_type*) ; 
 int /*<<< orphan*/  FUNC1 (struct bus_type*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(struct bus_type *bus, struct bus_attribute *attr)
{
	int error;
	if (FUNC0(bus)) {
		error = FUNC2(&bus->p->subsys.kobj, &attr->attr);
		FUNC1(bus);
	} else
		error = -EINVAL;
	return error;
}