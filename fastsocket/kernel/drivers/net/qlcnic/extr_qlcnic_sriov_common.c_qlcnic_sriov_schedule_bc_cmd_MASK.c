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
typedef  int /*<<< orphan*/  work_func_t ;
struct qlcnic_vf_info {int /*<<< orphan*/  trans_work; TYPE_1__* adapter; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/  bc_trans_wq; } ;
struct qlcnic_sriov {TYPE_2__ bc; } ;
struct TYPE_3__ {scalar_t__ need_fw_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLC_BC_VF_FLR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct qlcnic_sriov *sriov,
					 struct qlcnic_vf_info *vf,
					 work_func_t func)
{
	if (FUNC1(QLC_BC_VF_FLR, &vf->state) ||
	    vf->adapter->need_fw_reset)
		return;

	FUNC0(sriov->bc.bc_trans_wq, &vf->trans_work);
}