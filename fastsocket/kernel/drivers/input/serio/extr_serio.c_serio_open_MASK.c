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
struct serio_driver {int dummy; } ;
struct serio {scalar_t__ (* open ) (struct serio*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct serio*,struct serio_driver*) ; 
 scalar_t__ FUNC1 (struct serio*) ; 

int FUNC2(struct serio *serio, struct serio_driver *drv)
{
	FUNC0(serio, drv);

	if (serio->open && serio->open(serio)) {
		FUNC0(serio, NULL);
		return -1;
	}
	return 0;
}