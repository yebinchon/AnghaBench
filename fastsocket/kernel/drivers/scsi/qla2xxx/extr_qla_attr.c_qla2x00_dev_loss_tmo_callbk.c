
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct fc_rport {scalar_t__ dd_data; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_6__ {TYPE_4__* vha; int * drport; int rport; } ;
typedef TYPE_2__ fc_port_t ;
struct TYPE_7__ {TYPE_1__* hw; int dpc_flags; } ;
struct TYPE_5__ {int pdev; } ;


 int ABORT_ISP_ACTIVE ;
 int DID_NO_CONNECT ;
 int FCS_DEVICE_DEAD ;
 int pci_channel_offline (int ) ;
 int qla2x00_abort_all_cmds (TYPE_4__*,int) ;
 int qla2x00_set_fcport_state (TYPE_2__*,int ) ;
 struct Scsi_Host* rport_to_shost (struct fc_rport*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void
qla2x00_dev_loss_tmo_callbk(struct fc_rport *rport)
{
 struct Scsi_Host *host = rport_to_shost(rport);
 fc_port_t *fcport = *(fc_port_t **)rport->dd_data;
 unsigned long flags;

 if (!fcport)
  return;



 qla2x00_set_fcport_state(fcport, FCS_DEVICE_DEAD);





 spin_lock_irqsave(host->host_lock, flags);
 fcport->rport = fcport->drport = ((void*)0);
 *((fc_port_t **)rport->dd_data) = ((void*)0);
 spin_unlock_irqrestore(host->host_lock, flags);

 if (test_bit(ABORT_ISP_ACTIVE, &fcport->vha->dpc_flags))
  return;

 if (unlikely(pci_channel_offline(fcport->vha->hw->pdev))) {
  qla2x00_abort_all_cmds(fcport->vha, DID_NO_CONNECT << 16);
  return;
 }
}
