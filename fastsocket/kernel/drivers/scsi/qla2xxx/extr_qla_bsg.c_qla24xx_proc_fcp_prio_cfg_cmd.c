
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_23__ {int fcp_prio_enabled; } ;
struct qla_hw_data {TYPE_6__ flags; TYPE_9__* fcp_prio_cfg; } ;
struct qla_fcp_prio_cfg {int dummy; } ;
struct TYPE_22__ {int payload_len; int sg_cnt; int sg_list; } ;
struct TYPE_21__ {int payload_len; int sg_cnt; int sg_list; } ;
struct fc_bsg_job {int (* job_done ) (struct fc_bsg_job*) ;TYPE_7__* reply; TYPE_5__ request_payload; TYPE_4__ reply_payload; TYPE_3__* request; struct Scsi_Host* shost; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_25__ {struct qla_hw_data* hw; } ;
typedef TYPE_8__ scsi_qla_host_t ;
struct TYPE_26__ {int attributes; } ;
struct TYPE_24__ {int result; int reply_payload_rcv_len; } ;
struct TYPE_18__ {int* vendor_cmd; } ;
struct TYPE_19__ {TYPE_1__ h_vendor; } ;
struct TYPE_20__ {TYPE_2__ rqst_data; } ;


 int DID_ERROR ;
 void* DID_OK ;
 int EINVAL ;
 int ENOMEM ;
 int FCP_PRIO_ATTR_ENABLE ;
 int FCP_PRIO_CFG_SIZE ;
 scalar_t__ IS_QLA24XX_TYPE (struct qla_hw_data*) ;
 scalar_t__ IS_QLA25XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA82XX (struct qla_hw_data*) ;




 int memset (TYPE_9__*,int ,int) ;
 int ql_log (int ,TYPE_8__*,int,char*,int) ;
 int ql_log_warn ;
 int qla24xx_fcp_prio_cfg_valid (TYPE_8__*,struct qla_fcp_prio_cfg*,int) ;
 int qla24xx_update_all_fcp_prio (TYPE_8__*) ;
 int sg_copy_from_buffer (int ,int ,TYPE_9__*,int) ;
 int sg_copy_to_buffer (int ,int ,TYPE_9__*,int) ;
 TYPE_8__* shost_priv (struct Scsi_Host*) ;
 int stub1 (struct fc_bsg_job*) ;
 int vfree (TYPE_9__*) ;
 TYPE_9__* vmalloc (int) ;

__attribute__((used)) static int
qla24xx_proc_fcp_prio_cfg_cmd(struct fc_bsg_job *bsg_job)
{
 struct Scsi_Host *host = bsg_job->shost;
 scsi_qla_host_t *vha = shost_priv(host);
 struct qla_hw_data *ha = vha->hw;
 int ret = 0;
 uint32_t len;
 uint32_t oper;

 if (!(IS_QLA24XX_TYPE(ha) || IS_QLA25XX(ha) || IS_QLA82XX(ha))) {
  ret = -EINVAL;
  goto exit_fcp_prio_cfg;
 }


 oper = bsg_job->request->rqst_data.h_vendor.vendor_cmd[1];


 if (!ha->fcp_prio_cfg && (oper != 128)) {
  ret = -EINVAL;
  goto exit_fcp_prio_cfg;
 }
 switch (oper) {
 case 131:
  if (ha->flags.fcp_prio_enabled) {
   ha->flags.fcp_prio_enabled = 0;
   ha->fcp_prio_cfg->attributes &=
    ~FCP_PRIO_ATTR_ENABLE;
   qla24xx_update_all_fcp_prio(vha);
   bsg_job->reply->result = DID_OK;
  } else {
   ret = -EINVAL;
   bsg_job->reply->result = (DID_ERROR << 16);
   goto exit_fcp_prio_cfg;
  }
  break;

 case 130:
  if (!ha->flags.fcp_prio_enabled) {
   if (ha->fcp_prio_cfg) {
    ha->flags.fcp_prio_enabled = 1;
    ha->fcp_prio_cfg->attributes |=
        FCP_PRIO_ATTR_ENABLE;
    qla24xx_update_all_fcp_prio(vha);
    bsg_job->reply->result = DID_OK;
   } else {
    ret = -EINVAL;
    bsg_job->reply->result = (DID_ERROR << 16);
    goto exit_fcp_prio_cfg;
   }
  }
  break;

 case 129:
  len = bsg_job->reply_payload.payload_len;
  if (!len || len > FCP_PRIO_CFG_SIZE) {
   ret = -EINVAL;
   bsg_job->reply->result = (DID_ERROR << 16);
   goto exit_fcp_prio_cfg;
  }

  bsg_job->reply->result = DID_OK;
  bsg_job->reply->reply_payload_rcv_len =
   sg_copy_from_buffer(
   bsg_job->reply_payload.sg_list,
   bsg_job->reply_payload.sg_cnt, ha->fcp_prio_cfg,
   len);

  break;

 case 128:
  len = bsg_job->request_payload.payload_len;
  if (!len || len > FCP_PRIO_CFG_SIZE) {
   bsg_job->reply->result = (DID_ERROR << 16);
   ret = -EINVAL;
   goto exit_fcp_prio_cfg;
  }

  if (!ha->fcp_prio_cfg) {
   ha->fcp_prio_cfg = vmalloc(FCP_PRIO_CFG_SIZE);
   if (!ha->fcp_prio_cfg) {
    ql_log(ql_log_warn, vha, 0x7050,
        "Unable to allocate memory for fcp prio "
        "config data (%x).\n", FCP_PRIO_CFG_SIZE);
    bsg_job->reply->result = (DID_ERROR << 16);
    ret = -ENOMEM;
    goto exit_fcp_prio_cfg;
   }
  }

  memset(ha->fcp_prio_cfg, 0, FCP_PRIO_CFG_SIZE);
  sg_copy_to_buffer(bsg_job->request_payload.sg_list,
  bsg_job->request_payload.sg_cnt, ha->fcp_prio_cfg,
   FCP_PRIO_CFG_SIZE);



  if (!qla24xx_fcp_prio_cfg_valid(vha,
      (struct qla_fcp_prio_cfg *) ha->fcp_prio_cfg, 1)) {
   bsg_job->reply->result = (DID_ERROR << 16);
   ret = -EINVAL;



   vfree(ha->fcp_prio_cfg);
   ha->fcp_prio_cfg = ((void*)0);
   goto exit_fcp_prio_cfg;
  }

  ha->flags.fcp_prio_enabled = 0;
  if (ha->fcp_prio_cfg->attributes & FCP_PRIO_ATTR_ENABLE)
   ha->flags.fcp_prio_enabled = 1;
  qla24xx_update_all_fcp_prio(vha);
  bsg_job->reply->result = DID_OK;
  break;
 default:
  ret = -EINVAL;
  break;
 }
exit_fcp_prio_cfg:
 if (!ret)
  bsg_job->job_done(bsg_job);
 return ret;
}
