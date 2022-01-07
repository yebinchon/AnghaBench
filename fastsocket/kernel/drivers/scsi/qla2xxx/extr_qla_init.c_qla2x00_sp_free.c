
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct srb_iocb {int timer; } ;
struct scsi_qla_host {int dummy; } ;
struct TYPE_4__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef TYPE_2__ srb_t ;
typedef struct scsi_qla_host scsi_qla_host_t ;


 int del_timer (int *) ;
 int qla2x00_rel_sp (struct scsi_qla_host*,TYPE_2__*) ;

void
qla2x00_sp_free(void *data, void *ptr)
{
 srb_t *sp = (srb_t *)ptr;
 struct srb_iocb *iocb = &sp->u.iocb_cmd;
 struct scsi_qla_host *vha = (scsi_qla_host_t *)data;

 del_timer(&iocb->timer);
 qla2x00_rel_sp(vha, sp);
}
