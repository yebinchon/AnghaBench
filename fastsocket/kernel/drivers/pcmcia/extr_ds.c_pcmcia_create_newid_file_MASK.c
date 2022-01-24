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
struct pcmcia_driver {int /*<<< orphan*/  drv; int /*<<< orphan*/ * probe; } ;

/* Variables and functions */
 int /*<<< orphan*/  driver_attr_new_id ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC1(struct pcmcia_driver *drv)
{
	int error = 0;
	if (drv->probe != NULL)
		error = FUNC0(&drv->drv, &driver_attr_new_id);
	return error;
}