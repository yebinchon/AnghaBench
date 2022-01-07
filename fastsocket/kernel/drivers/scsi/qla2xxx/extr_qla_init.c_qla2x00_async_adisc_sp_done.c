
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int data; } ;
struct TYPE_8__ {TYPE_1__ logio; } ;
struct srb_iocb {TYPE_2__ u; } ;
struct scsi_qla_host {int dpc_flags; } ;
struct TYPE_9__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_10__ {TYPE_6__* fcport; int (* free ) (int ,TYPE_4__*) ;TYPE_3__ u; } ;
typedef TYPE_4__ srb_t ;
typedef struct scsi_qla_host scsi_qla_host_t ;
struct TYPE_11__ {int vha; } ;


 int UNLOADING ;
 int qla2x00_post_async_adisc_done_work (int ,TYPE_6__*,int ) ;
 int stub1 (int ,TYPE_4__*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void
qla2x00_async_adisc_sp_done(void *data, void *ptr, int res)
{
 srb_t *sp = (srb_t *)ptr;
 struct srb_iocb *lio = &sp->u.iocb_cmd;
 struct scsi_qla_host *vha = (scsi_qla_host_t *)data;

 if (!test_bit(UNLOADING, &vha->dpc_flags))
  qla2x00_post_async_adisc_done_work(sp->fcport->vha, sp->fcport,
      lio->u.logio.data);
 sp->free(sp->fcport->vha, sp);
}
