
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ nic_core_reset_hdlr_active; } ;
struct qla_hw_data {int optrom_state; int * optrom_buffer; int optrom_region_size; int optrom_region_start; TYPE_2__* isp_ops; TYPE_1__ flags; } ;
struct TYPE_11__ {int sg_cnt; int sg_list; } ;
struct fc_bsg_job {int (* job_done ) (struct fc_bsg_job*) ;TYPE_4__* reply; TYPE_3__ reply_payload; struct Scsi_Host* shost; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_13__ {struct qla_hw_data* hw; } ;
typedef TYPE_5__ scsi_qla_host_t ;
struct TYPE_12__ {int result; int reply_payload_rcv_len; } ;
struct TYPE_10__ {int (* read_optrom ) (TYPE_5__*,int *,int ,int ) ;} ;


 int DID_OK ;
 int EBUSY ;
 int QLA_SWAITING ;
 int qla2x00_optrom_setup (struct fc_bsg_job*,TYPE_5__*,int ) ;
 int sg_copy_from_buffer (int ,int ,int *,int ) ;
 TYPE_5__* shost_priv (struct Scsi_Host*) ;
 int stub1 (TYPE_5__*,int *,int ,int ) ;
 int stub2 (struct fc_bsg_job*) ;
 int vfree (int *) ;

__attribute__((used)) static int
qla2x00_read_optrom(struct fc_bsg_job *bsg_job)
{
 struct Scsi_Host *host = bsg_job->shost;
 scsi_qla_host_t *vha = shost_priv(host);
 struct qla_hw_data *ha = vha->hw;
 int rval = 0;

 if (ha->flags.nic_core_reset_hdlr_active)
  return -EBUSY;

 rval = qla2x00_optrom_setup(bsg_job, vha, 0);
 if (rval)
  return rval;

 ha->isp_ops->read_optrom(vha, ha->optrom_buffer,
     ha->optrom_region_start, ha->optrom_region_size);

 sg_copy_from_buffer(bsg_job->reply_payload.sg_list,
     bsg_job->reply_payload.sg_cnt, ha->optrom_buffer,
     ha->optrom_region_size);

 bsg_job->reply->reply_payload_rcv_len = ha->optrom_region_size;
 bsg_job->reply->result = DID_OK;
 vfree(ha->optrom_buffer);
 ha->optrom_buffer = ((void*)0);
 ha->optrom_state = QLA_SWAITING;
 bsg_job->job_done(bsg_job);
 return rval;
}
