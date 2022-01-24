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
struct ohci1394_iso_tasklet {int type; int /*<<< orphan*/  link; int /*<<< orphan*/  tasklet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void (*) (unsigned long),unsigned long) ; 

void FUNC2(struct ohci1394_iso_tasklet *tasklet, int type,
			       void (*func)(unsigned long), unsigned long data)
{
	FUNC1(&tasklet->tasklet, func, data);
	tasklet->type = type;
	/* We init the tasklet->link field, so we can list_del() it
	 * without worrying whether it was added to the list or not. */
	FUNC0(&tasklet->link);
}