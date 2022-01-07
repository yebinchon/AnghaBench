
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct rsp_que {int id; } ;
struct req_que {int id; } ;
struct qla_hw_data {int max_req_queues; int max_rsp_queues; struct rsp_que** rsp_q_map; struct req_que** req_q_map; } ;


 int QLA_SUCCESS ;
 int ql_log (int ,struct scsi_qla_host*,int,char*,int ) ;
 int ql_log_warn ;
 int qla25xx_delete_req_que (struct scsi_qla_host*,struct req_que*) ;
 int qla25xx_delete_rsp_que (struct scsi_qla_host*,struct rsp_que*) ;

int
qla25xx_delete_queues(struct scsi_qla_host *vha)
{
 int cnt, ret = 0;
 struct req_que *req = ((void*)0);
 struct rsp_que *rsp = ((void*)0);
 struct qla_hw_data *ha = vha->hw;


 for (cnt = 1; cnt < ha->max_req_queues; cnt++) {
  req = ha->req_q_map[cnt];
  if (req) {
   ret = qla25xx_delete_req_que(vha, req);
   if (ret != QLA_SUCCESS) {
    ql_log(ql_log_warn, vha, 0x00ea,
        "Couldn't delete req que %d.\n",
        req->id);
    return ret;
   }
  }
 }


 for (cnt = 1; cnt < ha->max_rsp_queues; cnt++) {
  rsp = ha->rsp_q_map[cnt];
  if (rsp) {
   ret = qla25xx_delete_rsp_que(vha, rsp);
   if (ret != QLA_SUCCESS) {
    ql_log(ql_log_warn, vha, 0x00eb,
        "Couldn't delete rsp que %d.\n",
        rsp->id);
    return ret;
   }
  }
 }
 return ret;
}
