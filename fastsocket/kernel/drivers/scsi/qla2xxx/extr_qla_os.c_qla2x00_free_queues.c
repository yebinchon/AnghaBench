
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsp_que {int dummy; } ;
typedef struct rsp_que req_que ;
struct qla_hw_data {int max_req_queues; int max_rsp_queues; struct rsp_que** rsp_q_map; struct rsp_que** req_q_map; } ;


 int kfree (struct rsp_que**) ;
 int qla2x00_free_req_que (struct qla_hw_data*,struct rsp_que*) ;
 int qla2x00_free_rsp_que (struct qla_hw_data*,struct rsp_que*) ;

__attribute__((used)) static void qla2x00_free_queues(struct qla_hw_data *ha)
{
 struct req_que *req;
 struct rsp_que *rsp;
 int cnt;

 for (cnt = 0; cnt < ha->max_req_queues; cnt++) {
  req = ha->req_q_map[cnt];
  qla2x00_free_req_que(ha, req);
 }
 kfree(ha->req_q_map);
 ha->req_q_map = ((void*)0);

 for (cnt = 0; cnt < ha->max_rsp_queues; cnt++) {
  rsp = ha->rsp_q_map[cnt];
  qla2x00_free_rsp_que(ha, rsp);
 }
 kfree(ha->rsp_q_map);
 ha->rsp_q_map = ((void*)0);
}
