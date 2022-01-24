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
struct qlcnic_vf_info {int /*<<< orphan*/ * flr_trans; int /*<<< orphan*/  state; int /*<<< orphan*/  pci_func; int /*<<< orphan*/  rcv_act; int /*<<< orphan*/  trans_work; int /*<<< orphan*/  rcv_pend; struct qlcnic_adapter* adapter; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_2__ {int /*<<< orphan*/  sriov; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLC_BC_VF_FLR ; 
 int /*<<< orphan*/  QLC_BC_VF_SOFT_FLR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct qlcnic_vf_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*,struct qlcnic_vf_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_adapter*,struct qlcnic_vf_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct qlcnic_vf_info *vf)
{
	struct qlcnic_adapter *adapter = vf->adapter;

	FUNC3(&vf->rcv_pend);
	FUNC0(&vf->trans_work);
	FUNC3(&vf->rcv_act);

	if (FUNC7(QLC_BC_VF_SOFT_FLR, &vf->state)) {
		FUNC5(adapter, vf);
		FUNC4(adapter, vf);
	}

	FUNC6(adapter, 0, vf->pci_func);

	FUNC1(QLC_BC_VF_FLR, &vf->state);
	if (FUNC7(QLC_BC_VF_SOFT_FLR, &vf->state)) {
		FUNC2(adapter->ahw->sriov, vf,
						  vf->flr_trans);
		FUNC1(QLC_BC_VF_SOFT_FLR, &vf->state);
		vf->flr_trans = NULL;
	}
}