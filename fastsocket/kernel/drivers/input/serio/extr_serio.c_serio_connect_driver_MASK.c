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
struct serio_driver {int (* connect ) (struct serio*,struct serio_driver*) ;} ;
struct serio {int /*<<< orphan*/  drv_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct serio*,struct serio_driver*) ; 

__attribute__((used)) static int FUNC3(struct serio *serio, struct serio_driver *drv)
{
	int retval;

	FUNC0(&serio->drv_mutex);
	retval = drv->connect(serio, drv);
	FUNC1(&serio->drv_mutex);

	return retval;
}