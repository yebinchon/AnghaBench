#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ag_work_lock; TYPE_1__* ports_guid; } ;
struct TYPE_6__ {int /*<<< orphan*/  going_down_lock; TYPE_2__ alias_guid; int /*<<< orphan*/  is_going_down; } ;
struct mlx4_ib_dev {TYPE_3__ sriov; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  alias_guid_work; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct mlx4_ib_dev *dev, int port)
{
	unsigned long flags, flags1;

	if (!FUNC0(dev->dev))
		return;
	FUNC2(&dev->sriov.going_down_lock, flags);
	FUNC2(&dev->sriov.alias_guid.ag_work_lock, flags1);
	if (!dev->sriov.is_going_down) {
		FUNC1(dev->sriov.alias_guid.ports_guid[port].wq,
			   &dev->sriov.alias_guid.ports_guid[port].alias_guid_work, 0);
	}
	FUNC3(&dev->sriov.alias_guid.ag_work_lock, flags1);
	FUNC3(&dev->sriov.going_down_lock, flags);
}