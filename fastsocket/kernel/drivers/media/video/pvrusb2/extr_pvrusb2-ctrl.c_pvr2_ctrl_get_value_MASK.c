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
struct pvr2_ctrl {TYPE_2__* hdw; TYPE_1__* info; } ;
struct TYPE_4__ {int /*<<< orphan*/  big_lock; } ;
struct TYPE_3__ {int (* get_value ) (struct pvr2_ctrl*,int*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pvr2_ctrl*,int*) ; 

int FUNC3(struct pvr2_ctrl *cptr,int *valptr)
{
	int ret = 0;
	if (!cptr) return -EINVAL;
	FUNC1(cptr->hdw->big_lock); do {
		ret = cptr->info->get_value(cptr,valptr);
	} while(0); FUNC0(cptr->hdw->big_lock);
	return ret;
}