#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  pv_id_table; int /*<<< orphan*/  sl_id_map; int /*<<< orphan*/  cm_list; int /*<<< orphan*/  id_map_lock; } ;
struct mlx4_ib_dev {TYPE_1__ sriov; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct mlx4_ib_dev *dev)
{
	FUNC3(&dev->sriov.id_map_lock);
	FUNC0(&dev->sriov.cm_list);
	dev->sriov.sl_id_map = RB_ROOT;
	FUNC1(&dev->sriov.pv_id_table);
	FUNC2(&dev->sriov.pv_id_table, GFP_KERNEL);
}