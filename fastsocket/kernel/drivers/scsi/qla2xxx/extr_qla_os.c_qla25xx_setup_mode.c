
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct scsi_qla_host {int req; struct qla_hw_data* hw; } ;
struct TYPE_2__ {int cpu_affinity_enabled; } ;
struct qla_hw_data {int fw_attributes; int max_rsp_queues; int max_req_queues; int * rsp_q_map; int * req_q_map; scalar_t__ mqenable; int * wq; TYPE_1__ flags; } ;


 int BIT_1 ;
 int BIT_6 ;
 int BIT_7 ;
 int QLA_DEFAULT_QUE_QOS ;
 int * create_workqueue (char*) ;
 int destroy_workqueue (int *) ;
 int kfree (int *) ;
 scalar_t__ ql2xmultique_tag ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,int,int) ;
 int ql_dbg_init ;
 int ql_dbg_multiq ;
 int ql_log (int ,struct scsi_qla_host*,int,char*) ;
 int ql_log_warn ;
 int qla25xx_create_req_que (struct qla_hw_data*,int ,int ,int ,int,int ) ;
 int qla25xx_create_rsp_que (struct qla_hw_data*,int ,int ,int ,int) ;
 int qla25xx_delete_queues (struct scsi_qla_host*) ;

__attribute__((used)) static int qla25xx_setup_mode(struct scsi_qla_host *vha)
{
 uint16_t options = 0;
 int ques, req, ret;
 struct qla_hw_data *ha = vha->hw;

 if (!(ha->fw_attributes & BIT_6)) {
  ql_log(ql_log_warn, vha, 0x00d8,
      "Firmware is not multi-queue capable.\n");
  goto fail;
 }
 if (ql2xmultique_tag) {

  options |= BIT_7;
  req = qla25xx_create_req_que(ha, options, 0, 0, -1,
   QLA_DEFAULT_QUE_QOS);
  if (!req) {
   ql_log(ql_log_warn, vha, 0x00e0,
       "Failed to create request queue.\n");
   goto fail;
  }
  ha->wq = create_workqueue("qla2xxx_wq");
  vha->req = ha->req_q_map[req];
  options |= BIT_1;
  for (ques = 1; ques < ha->max_rsp_queues; ques++) {
   ret = qla25xx_create_rsp_que(ha, options, 0, 0, req);
   if (!ret) {
    ql_log(ql_log_warn, vha, 0x00e8,
        "Failed to create response queue.\n");
    goto fail2;
   }
  }
  ha->flags.cpu_affinity_enabled = 1;
  ql_dbg(ql_dbg_multiq, vha, 0xc007,
      "CPU affinity mode enalbed, "
      "no. of response queues:%d no. of request queues:%d.\n",
      ha->max_rsp_queues, ha->max_req_queues);
  ql_dbg(ql_dbg_init, vha, 0x00e9,
      "CPU affinity mode enalbed, "
      "no. of response queues:%d no. of request queues:%d.\n",
      ha->max_rsp_queues, ha->max_req_queues);
 }
 return 0;
fail2:
 qla25xx_delete_queues(vha);
 destroy_workqueue(ha->wq);
 ha->wq = ((void*)0);
 vha->req = ha->req_q_map[0];
fail:
 ha->mqenable = 0;
 kfree(ha->req_q_map);
 kfree(ha->rsp_q_map);
 ha->max_req_queues = ha->max_rsp_queues = 1;
 return 1;
}
