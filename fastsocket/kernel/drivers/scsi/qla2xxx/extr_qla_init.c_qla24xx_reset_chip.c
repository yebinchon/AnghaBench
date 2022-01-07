
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ pci_channel_io_perm_failure; } ;
struct qla_hw_data {TYPE_2__* isp_ops; TYPE_1__ flags; int pdev; } ;
struct TYPE_9__ {struct qla_hw_data* hw; } ;
typedef TYPE_3__ scsi_qla_host_t ;
struct TYPE_8__ {int (* disable_intrs ) (struct qla_hw_data*) ;} ;


 scalar_t__ pci_channel_offline (int ) ;
 int qla24xx_reset_risc (TYPE_3__*) ;
 int qla25xx_manipulate_risc_semaphore (TYPE_3__*) ;
 int stub1 (struct qla_hw_data*) ;

void
qla24xx_reset_chip(scsi_qla_host_t *vha)
{
 struct qla_hw_data *ha = vha->hw;

 if (pci_channel_offline(ha->pdev) &&
     ha->flags.pci_channel_io_perm_failure) {
  return;
 }

 ha->isp_ops->disable_intrs(ha);

 qla25xx_manipulate_risc_semaphore(vha);


 qla24xx_reset_risc(vha);
}
