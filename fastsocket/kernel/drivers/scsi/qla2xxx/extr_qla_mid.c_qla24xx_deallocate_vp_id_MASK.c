#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct qla_hw_data {int /*<<< orphan*/  vport_lock; int /*<<< orphan*/  vp_idx_map; int /*<<< orphan*/  num_vhosts; int /*<<< orphan*/  vport_slock; } ;
struct TYPE_3__ {int /*<<< orphan*/  vp_idx; int /*<<< orphan*/  list; int /*<<< orphan*/  vref_count; struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC8(scsi_qla_host_t *vha)
{
	uint16_t vp_id;
	struct qla_hw_data *ha = vha->hw;
	unsigned long flags = 0;

	FUNC4(&ha->vport_lock);
	/*
	 * Wait for all pending activities to finish before removing vport from
	 * the list.
	 * Lock needs to be held for safe removal from the list (it
	 * ensures no active vp_list traversal while the vport is removed
	 * from the queue)
	 */
	FUNC6(&ha->vport_slock, flags);
	while (FUNC0(&vha->vref_count)) {
		FUNC7(&ha->vport_slock, flags);

		FUNC3(500);

		FUNC6(&ha->vport_slock, flags);
	}
	FUNC2(&vha->list);
	FUNC7(&ha->vport_slock, flags);

	vp_id = vha->vp_idx;
	ha->num_vhosts--;
	FUNC1(vp_id, ha->vp_idx_map);

	FUNC5(&ha->vport_lock);
}