#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct rsp_que {int dummy; } ;
struct TYPE_10__ {scalar_t__ mbox_busy; } ;
struct qla_hw_data {TYPE_2__* isp_ops; TYPE_1__ flags; struct rsp_que** rsp_q_map; scalar_t__ mem_only; } ;
struct pci_dev {int /*<<< orphan*/  error_state; } ;
struct TYPE_12__ {int /*<<< orphan*/  dpc_flags; struct qla_hw_data* hw; } ;
typedef  TYPE_3__ scsi_qla_host_t ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
struct TYPE_11__ {scalar_t__ (* abort_isp ) (TYPE_3__*) ;scalar_t__ (* pci_config ) (TYPE_3__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ABORT_ISP_ACTIVE ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 scalar_t__ QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  pci_channel_io_normal ; 
 int FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*) ; 
 TYPE_3__* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_3__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_dbg_aer ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_3__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 scalar_t__ FUNC10 (struct qla_hw_data*,struct rsp_que*) ; 
 scalar_t__ FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (TYPE_3__*) ; 
 scalar_t__ FUNC14 (TYPE_3__*) ; 

__attribute__((used)) static pci_ers_result_t
FUNC15(struct pci_dev *pdev)
{
	pci_ers_result_t ret = PCI_ERS_RESULT_DISCONNECT;
	scsi_qla_host_t *base_vha = FUNC5(pdev);
	struct qla_hw_data *ha = base_vha->hw;
	struct rsp_que *rsp;
	int rc, retries = 10;

	FUNC8(ql_dbg_aer, base_vha, 0x9004,
	    "Slot Reset.\n");

	/* Workaround: qla2xxx driver which access hardware earlier
	 * needs error state to be pci_channel_io_online.
	 * Otherwise mailbox command timesout.
	 */
	pdev->error_state = pci_channel_io_normal;

	FUNC6(pdev);

	/* pci_restore_state() clears the saved_state flag of the device
	 * save restored state which resets saved_state flag
	 */
	FUNC7(pdev);

	if (ha->mem_only)
		rc = FUNC4(pdev);
	else
		rc = FUNC3(pdev);

	if (rc) {
		FUNC9(ql_log_warn, base_vha, 0x9005,
		    "Can't re-enable PCI device after reset.\n");
		goto exit_slot_reset;
	}

	rsp = ha->rsp_q_map[0];
	if (FUNC10(ha, rsp))
		goto exit_slot_reset;

	if (ha->isp_ops->pci_config(base_vha))
		goto exit_slot_reset;

	if (FUNC0(ha)) {
		if (FUNC11(base_vha) == QLA_SUCCESS) {
			ret = PCI_ERS_RESULT_RECOVERED;
			goto exit_slot_reset;
		} else
			goto exit_slot_reset;
	}

	while (ha->flags.mbox_busy && retries--)
		FUNC2(1000);

	FUNC12(ABORT_ISP_ACTIVE, &base_vha->dpc_flags);
	if (ha->isp_ops->abort_isp(base_vha) == QLA_SUCCESS)
		ret =  PCI_ERS_RESULT_RECOVERED;
	FUNC1(ABORT_ISP_ACTIVE, &base_vha->dpc_flags);

exit_slot_reset:
	FUNC8(ql_dbg_aer, base_vha, 0x900e,
	    "slot_reset return %x.\n", ret);

	return ret;
}