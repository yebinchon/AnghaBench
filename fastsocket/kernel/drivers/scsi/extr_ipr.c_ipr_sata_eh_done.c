
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int status; } ;
struct ipr_sata_port {TYPE_2__ ioasa; } ;
struct ipr_cmnd {TYPE_3__* hrrq; int queue; struct ata_queued_cmd* qc; } ;
struct ata_queued_cmd {int err_mask; TYPE_1__* ap; } ;
struct TYPE_6__ {int hrrq_free_q; } ;
struct TYPE_4__ {struct ipr_sata_port* private_data; } ;


 int AC_ERR_OTHER ;
 int ATA_BUSY ;
 int ata_qc_complete (struct ata_queued_cmd*) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void ipr_sata_eh_done(struct ipr_cmnd *ipr_cmd)
{
 struct ata_queued_cmd *qc = ipr_cmd->qc;
 struct ipr_sata_port *sata_port = qc->ap->private_data;

 qc->err_mask |= AC_ERR_OTHER;
 sata_port->ioasa.status |= ATA_BUSY;
 list_add_tail(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_free_q);
 ata_qc_complete(qc);
}
