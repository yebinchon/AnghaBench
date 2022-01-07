
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scsi_qla_host {int dummy; } ;
struct fc_bsg_job {int (* job_done ) (struct fc_bsg_job*) ;TYPE_2__* reply; } ;
struct TYPE_5__ {struct fc_bsg_job* bsg_job; } ;
struct TYPE_7__ {int (* free ) (struct scsi_qla_host*,TYPE_3__*) ;TYPE_1__ u; } ;
typedef TYPE_3__ srb_t ;
typedef struct scsi_qla_host scsi_qla_host_t ;
struct TYPE_6__ {int result; } ;


 int stub1 (struct fc_bsg_job*) ;
 int stub2 (struct scsi_qla_host*,TYPE_3__*) ;

void
qla2x00_bsg_job_done(void *data, void *ptr, int res)
{
 srb_t *sp = (srb_t*)ptr;
 struct scsi_qla_host *vha = (scsi_qla_host_t *)data;
 struct fc_bsg_job *bsg_job = sp->u.bsg_job;

 bsg_job->reply->result = res;
 bsg_job->job_done(bsg_job);
 sp->free(vha, sp);
}
