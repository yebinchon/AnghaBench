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
struct qlcnic_vf_info {int /*<<< orphan*/  pci_func; int /*<<< orphan*/  state; TYPE_1__* adapter; } ;
struct qlcnic_sriov {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLC_BC_VF_FLR ; 
 int /*<<< orphan*/  QLC_BC_VF_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qlcnic_sriov_pf_process_flr ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_sriov*,struct qlcnic_vf_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct qlcnic_sriov *sriov,
				struct qlcnic_vf_info *vf)
{
	struct net_device *dev = vf->adapter->netdev;

	if (!FUNC3(QLC_BC_VF_STATE, &vf->state)) {
		FUNC0(QLC_BC_VF_FLR, &vf->state);
		return;
	}

	if (FUNC4(QLC_BC_VF_FLR, &vf->state)) {
		FUNC1(dev, "FLR for PCI func %d in progress\n",
			    vf->pci_func);
		return;
	}

	FUNC2(sriov, vf, qlcnic_sriov_pf_process_flr);
	FUNC1(dev, "FLR received for PCI func %d\n", vf->pci_func);
}