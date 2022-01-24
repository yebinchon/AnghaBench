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
struct v4l2_int_ioctl_desc {int dummy; } ;
struct TYPE_4__ {TYPE_1__* slave; } ;
struct v4l2_int_device {scalar_t__ type; int /*<<< orphan*/  head; TYPE_2__ u; } ;
struct TYPE_3__ {int /*<<< orphan*/  num_ioctls; int /*<<< orphan*/  ioctls; } ;

/* Variables and functions */
 int /*<<< orphan*/  int_list ; 
 int /*<<< orphan*/  ioctl_sort_cmp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ v4l2_int_type_slave ; 

int FUNC5(struct v4l2_int_device *d)
{
	if (d->type == v4l2_int_type_slave)
		FUNC3(d->u.slave->ioctls, d->u.slave->num_ioctls,
		     sizeof(struct v4l2_int_ioctl_desc),
		     &ioctl_sort_cmp, NULL);
	FUNC1(&mutex);
	FUNC0(&d->head, &int_list);
	FUNC4();
	FUNC2(&mutex);

	return 0;
}