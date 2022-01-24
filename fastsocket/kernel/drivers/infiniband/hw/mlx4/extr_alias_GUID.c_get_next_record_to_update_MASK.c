#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct mlx4_sriov_alias_guid_info_rec_det {int dummy; } ;
struct mlx4_next_alias_guid_work {size_t port; int block_num; int /*<<< orphan*/  rec_det; } ;
struct TYPE_6__ {int /*<<< orphan*/  ag_work_lock; TYPE_1__* ports_guid; } ;
struct TYPE_7__ {TYPE_2__ alias_guid; } ;
struct mlx4_ib_dev {TYPE_3__ sriov; } ;
struct TYPE_8__ {scalar_t__ status; } ;
struct TYPE_5__ {TYPE_4__* all_rec_per_port; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ MLX4_GUID_INFO_STATUS_IDLE ; 
 scalar_t__ MLX4_GUID_INFO_STATUS_PENDING ; 
 int NUM_ALIAS_GUID_REC_IN_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct mlx4_ib_dev *dev, u8 port,
				     struct mlx4_next_alias_guid_work *rec)
{
	int j;
	unsigned long flags;

	for (j = 0; j < NUM_ALIAS_GUID_REC_IN_PORT; j++) {
		FUNC1(&dev->sriov.alias_guid.ag_work_lock, flags);
		if (dev->sriov.alias_guid.ports_guid[port].all_rec_per_port[j].status ==
		    MLX4_GUID_INFO_STATUS_IDLE) {
			FUNC0(&rec->rec_det,
			       &dev->sriov.alias_guid.ports_guid[port].all_rec_per_port[j],
			       sizeof (struct mlx4_sriov_alias_guid_info_rec_det));
			rec->port = port;
			rec->block_num = j;
			dev->sriov.alias_guid.ports_guid[port].all_rec_per_port[j].status =
				MLX4_GUID_INFO_STATUS_PENDING;
			FUNC2(&dev->sriov.alias_guid.ag_work_lock, flags);
			return 0;
		}
		FUNC2(&dev->sriov.alias_guid.ag_work_lock, flags);
	}
	return -ENOENT;
}