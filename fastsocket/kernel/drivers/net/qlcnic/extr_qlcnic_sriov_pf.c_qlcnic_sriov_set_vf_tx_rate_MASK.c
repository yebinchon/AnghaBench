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
typedef  int /*<<< orphan*/  u16 ;
struct qlcnic_vport {int max_tx_bw; int /*<<< orphan*/  handle; } ;
struct qlcnic_vf_info {int /*<<< orphan*/  state; struct qlcnic_vport* vp; } ;
struct qlcnic_sriov {int num_vfs; struct qlcnic_vf_info* vf_info; } ;
struct qlcnic_info {int max_tx_bw; int /*<<< orphan*/  bit_offsets; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct qlcnic_sriov* sriov; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_0 ; 
 int EINVAL ; 
 int EIO ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  QLC_BC_VF_STATE ; 
 int /*<<< orphan*/  QLC_VF_MAX_TX_RATE ; 
 int /*<<< orphan*/  QLC_VF_MIN_TX_RATE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int,int,int) ; 
 struct qlcnic_adapter* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*,struct qlcnic_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC5 (struct qlcnic_adapter*,struct qlcnic_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC7(struct net_device *netdev, int vf, int tx_rate)
{
	struct qlcnic_adapter *adapter = FUNC2(netdev);
	struct qlcnic_sriov *sriov = adapter->ahw->sriov;
	struct qlcnic_vf_info *vf_info;
	struct qlcnic_info nic_info;
	struct qlcnic_vport *vp;
	u16 vpid;

	if (!FUNC4(adapter))
		return -EOPNOTSUPP;

	if (vf >= sriov->num_vfs)
		return -EINVAL;

	if (tx_rate >= 10000 || tx_rate < 100) {
		FUNC0(netdev,
			   "Invalid Tx rate, allowed range is [%d - %d]",
			   QLC_VF_MIN_TX_RATE, QLC_VF_MAX_TX_RATE);
		return -EINVAL;
	}

	if (tx_rate == 0)
		tx_rate = 10000;

	vf_info = &sriov->vf_info[vf];
	vp = vf_info->vp;
	vpid = vp->handle;

	if (FUNC6(QLC_BC_VF_STATE, &vf_info->state)) {
		if (FUNC3(adapter, &nic_info, vpid))
			return -EIO;

		nic_info.max_tx_bw = tx_rate / 100;
		nic_info.bit_offsets = BIT_0;

		if (FUNC5(adapter, &nic_info, vpid))
			return -EIO;
	}

	vp->max_tx_bw = tx_rate / 100;
	FUNC1(netdev,
		    "Setting Tx rate %d (Mbps), %d %% of PF bandwidth, for VF %d\n",
		    tx_rate, vp->max_tx_bw, vf);
	return 0;
}