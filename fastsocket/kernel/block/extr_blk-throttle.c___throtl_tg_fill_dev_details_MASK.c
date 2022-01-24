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
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct throtl_grp {TYPE_2__ blkg; } ;
struct throtl_data {TYPE_1__* queue; } ;
struct backing_dev_info {scalar_t__ dev; } ;
struct TYPE_3__ {struct backing_dev_info backing_dev_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static void
FUNC3(struct throtl_data *td, struct throtl_grp *tg)
{
	struct backing_dev_info *bdi = &td->queue->backing_dev_info;
	unsigned int major, minor;

	if (!tg || tg->blkg.dev)
		return;

	/*
	 * Fill in device details for a group which might not have been
	 * filled at group creation time as queue was being instantiated
	 * and driver had not attached a device yet
	 */
	if (bdi->dev && FUNC1(bdi->dev)) {
		FUNC2(FUNC1(bdi->dev), "%u:%u", &major, &minor);
		tg->blkg.dev = FUNC0(major, minor);
	}
}