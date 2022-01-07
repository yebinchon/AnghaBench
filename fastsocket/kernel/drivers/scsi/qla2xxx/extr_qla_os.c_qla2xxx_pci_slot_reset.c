
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct rsp_que {int dummy; } ;
struct TYPE_10__ {scalar_t__ mbox_busy; } ;
struct qla_hw_data {TYPE_2__* isp_ops; TYPE_1__ flags; struct rsp_que** rsp_q_map; scalar_t__ mem_only; } ;
struct pci_dev {int error_state; } ;
struct TYPE_12__ {int dpc_flags; struct qla_hw_data* hw; } ;
typedef TYPE_3__ scsi_qla_host_t ;
typedef int pci_ers_result_t ;
struct TYPE_11__ {scalar_t__ (* abort_isp ) (TYPE_3__*) ;scalar_t__ (* pci_config ) (TYPE_3__*) ;} ;


 int ABORT_ISP_ACTIVE ;
 scalar_t__ IS_QLA82XX (struct qla_hw_data*) ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 scalar_t__ QLA_SUCCESS ;
 int clear_bit (int ,int *) ;
 int msleep (int) ;
 int pci_channel_io_normal ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_enable_device_mem (struct pci_dev*) ;
 TYPE_3__* pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int ql_dbg (int ,TYPE_3__*,int,char*,...) ;
 int ql_dbg_aer ;
 int ql_log (int ,TYPE_3__*,int,char*) ;
 int ql_log_warn ;
 scalar_t__ qla2x00_request_irqs (struct qla_hw_data*,struct rsp_que*) ;
 scalar_t__ qla82xx_error_recovery (TYPE_3__*) ;
 int set_bit (int ,int *) ;
 scalar_t__ stub1 (TYPE_3__*) ;
 scalar_t__ stub2 (TYPE_3__*) ;

__attribute__((used)) static pci_ers_result_t
qla2xxx_pci_slot_reset(struct pci_dev *pdev)
{
 pci_ers_result_t ret = PCI_ERS_RESULT_DISCONNECT;
 scsi_qla_host_t *base_vha = pci_get_drvdata(pdev);
 struct qla_hw_data *ha = base_vha->hw;
 struct rsp_que *rsp;
 int rc, retries = 10;

 ql_dbg(ql_dbg_aer, base_vha, 0x9004,
     "Slot Reset.\n");





 pdev->error_state = pci_channel_io_normal;

 pci_restore_state(pdev);




 pci_save_state(pdev);

 if (ha->mem_only)
  rc = pci_enable_device_mem(pdev);
 else
  rc = pci_enable_device(pdev);

 if (rc) {
  ql_log(ql_log_warn, base_vha, 0x9005,
      "Can't re-enable PCI device after reset.\n");
  goto exit_slot_reset;
 }

 rsp = ha->rsp_q_map[0];
 if (qla2x00_request_irqs(ha, rsp))
  goto exit_slot_reset;

 if (ha->isp_ops->pci_config(base_vha))
  goto exit_slot_reset;

 if (IS_QLA82XX(ha)) {
  if (qla82xx_error_recovery(base_vha) == QLA_SUCCESS) {
   ret = PCI_ERS_RESULT_RECOVERED;
   goto exit_slot_reset;
  } else
   goto exit_slot_reset;
 }

 while (ha->flags.mbox_busy && retries--)
  msleep(1000);

 set_bit(ABORT_ISP_ACTIVE, &base_vha->dpc_flags);
 if (ha->isp_ops->abort_isp(base_vha) == QLA_SUCCESS)
  ret = PCI_ERS_RESULT_RECOVERED;
 clear_bit(ABORT_ISP_ACTIVE, &base_vha->dpc_flags);

exit_slot_reset:
 ql_dbg(ql_dbg_aer, base_vha, 0x900e,
     "slot_reset return %x.\n", ret);

 return ret;
}
