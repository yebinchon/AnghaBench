
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rsp_que {int dummy; } ;
struct TYPE_5__ {scalar_t__ msi_enabled; scalar_t__ msix_enabled; } ;
struct qla_hw_data {TYPE_4__* pdev; TYPE_1__ flags; struct rsp_que** rsp_q_map; } ;
struct TYPE_6__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;
struct TYPE_7__ {int irq; } ;


 int free_irq (int ,struct rsp_que*) ;
 int pci_disable_msi (TYPE_4__*) ;
 int qla24xx_disable_msix (struct qla_hw_data*) ;

void
qla2x00_free_irqs(scsi_qla_host_t *vha)
{
 struct qla_hw_data *ha = vha->hw;
 struct rsp_que *rsp;





 if (!ha->rsp_q_map || !ha->rsp_q_map[0])
  return;
 rsp = ha->rsp_q_map[0];

 if (ha->flags.msix_enabled)
  qla24xx_disable_msix(ha);
 else if (ha->flags.msi_enabled) {
  free_irq(ha->pdev->irq, rsp);
  pci_disable_msi(ha->pdev);
 } else
  free_irq(ha->pdev->irq, rsp);
}
