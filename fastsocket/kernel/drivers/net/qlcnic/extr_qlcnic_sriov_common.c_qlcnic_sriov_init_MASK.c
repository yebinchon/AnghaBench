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
struct workqueue_struct {int dummy; } ;
struct qlcnic_vport {int spoofchk; int /*<<< orphan*/  mac; int /*<<< orphan*/  max_tx_bw; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  wait_list; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  wait_list; } ;
struct qlcnic_back_channel {struct workqueue_struct* bc_trans_wq; struct workqueue_struct* bc_async_wq; int /*<<< orphan*/  async_list; } ;
struct qlcnic_vf_info {int num_vfs; struct qlcnic_vf_info* vf_info; struct qlcnic_vport* vp; int /*<<< orphan*/  trans_work; int /*<<< orphan*/  ch_free_cmpl; TYPE_2__ rcv_pend; TYPE_1__ rcv_act; int /*<<< orphan*/  send_cmd_lock; int /*<<< orphan*/  pci_func; struct qlcnic_adapter* adapter; struct qlcnic_back_channel bc; } ;
struct qlcnic_sriov {int num_vfs; struct qlcnic_sriov* vf_info; struct qlcnic_vport* vp; int /*<<< orphan*/  trans_work; int /*<<< orphan*/  ch_free_cmpl; TYPE_2__ rcv_pend; TYPE_1__ rcv_act; int /*<<< orphan*/  send_cmd_lock; int /*<<< orphan*/  pci_func; struct qlcnic_adapter* adapter; struct qlcnic_back_channel bc; } ;
struct qlcnic_adapter {TYPE_4__* ahw; TYPE_3__* pdev; } ;
struct TYPE_8__ {struct qlcnic_vf_info* sriov; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_BW ; 
 struct workqueue_struct* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct workqueue_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_vf_info*) ; 
 void* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC11 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  qlcnic_sriov_process_bc_cmd ; 
 int /*<<< orphan*/  FUNC12 (struct qlcnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(struct qlcnic_adapter *adapter, int num_vfs)
{
	struct qlcnic_sriov *sriov;
	struct qlcnic_back_channel *bc;
	struct workqueue_struct *wq;
	struct qlcnic_vport *vp;
	struct qlcnic_vf_info *vf;
	int err, i;

	if (!FUNC10(adapter))
		return -EIO;

	sriov  = FUNC8(sizeof(struct qlcnic_sriov), GFP_KERNEL);
	if (!sriov)
		return -ENOMEM;

	adapter->ahw->sriov = sriov;
	sriov->num_vfs = num_vfs;
	bc = &sriov->bc;
	sriov->vf_info = FUNC8(sizeof(struct qlcnic_vf_info) *
				 num_vfs, GFP_KERNEL);
	if (!sriov->vf_info) {
		err = -ENOMEM;
		goto qlcnic_free_sriov;
	}

	wq = FUNC2("bc-trans");
	if (wq == NULL) {
		err = -ENOMEM;
		FUNC4(&adapter->pdev->dev,
			"Cannot create bc-trans workqueue\n");
		goto qlcnic_free_vf_info;
	}

	bc->bc_trans_wq = wq;

	wq = FUNC2("async");
	if (wq == NULL) {
		err = -ENOMEM;
		FUNC4(&adapter->pdev->dev, "Cannot create async workqueue\n");
		goto qlcnic_destroy_trans_wq;
	}

	bc->bc_async_wq =  wq;
	FUNC0(&bc->async_list);

	for (i = 0; i < num_vfs; i++) {
		vf = &sriov->vf_info[i];
		vf->adapter = adapter;
		vf->pci_func = FUNC12(adapter, i);
		FUNC9(&vf->send_cmd_lock);
		FUNC0(&vf->rcv_act.wait_list);
		FUNC0(&vf->rcv_pend.wait_list);
		FUNC14(&vf->rcv_act.lock);
		FUNC14(&vf->rcv_pend.lock);
		FUNC6(&vf->ch_free_cmpl);

		FUNC1(&vf->trans_work, qlcnic_sriov_process_bc_cmd);

		if (FUNC11(adapter)) {
			vp = FUNC8(sizeof(struct qlcnic_vport), GFP_KERNEL);
			if (!vp) {
				err = -ENOMEM;
				goto qlcnic_destroy_async_wq;
			}
			sriov->vf_info[i].vp = vp;
			vp->max_tx_bw = MAX_BW;
			vp->spoofchk = true;
			FUNC13(vp->mac);
			FUNC5(&adapter->pdev->dev,
				 "MAC Address %pM is configured for VF %d\n",
				 vp->mac, i);
		}
	}

	return 0;

qlcnic_destroy_async_wq:
	FUNC3(bc->bc_async_wq);

qlcnic_destroy_trans_wq:
	FUNC3(bc->bc_trans_wq);

qlcnic_free_vf_info:
	FUNC7(sriov->vf_info);

qlcnic_free_sriov:
	FUNC7(adapter->ahw->sriov);
	return err;
}