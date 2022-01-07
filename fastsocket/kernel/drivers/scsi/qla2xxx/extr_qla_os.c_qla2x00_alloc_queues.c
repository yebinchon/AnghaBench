
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsp_que {int dummy; } ;
struct req_que {int dummy; } ;
struct qla_hw_data {int max_req_queues; int max_rsp_queues; struct req_que** req_q_map; int req_qid_map; int rsp_qid_map; struct rsp_que** rsp_q_map; int pdev; } ;
typedef int scsi_qla_host_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct req_que**) ;
 void* kzalloc (int,int ) ;
 int * pci_get_drvdata (int ) ;
 int ql_log (int ,int *,int,char*) ;
 int ql_log_fatal ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int qla2x00_alloc_queues(struct qla_hw_data *ha, struct req_que *req,
    struct rsp_que *rsp)
{
 scsi_qla_host_t *vha = pci_get_drvdata(ha->pdev);
 ha->req_q_map = kzalloc(sizeof(struct req_que *) * ha->max_req_queues,
    GFP_KERNEL);
 if (!ha->req_q_map) {
  ql_log(ql_log_fatal, vha, 0x003b,
      "Unable to allocate memory for request queue ptrs.\n");
  goto fail_req_map;
 }

 ha->rsp_q_map = kzalloc(sizeof(struct rsp_que *) * ha->max_rsp_queues,
    GFP_KERNEL);
 if (!ha->rsp_q_map) {
  ql_log(ql_log_fatal, vha, 0x003c,
      "Unable to allocate memory for response queue ptrs.\n");
  goto fail_rsp_map;
 }




 ha->rsp_q_map[0] = rsp;
 ha->req_q_map[0] = req;
 set_bit(0, ha->rsp_qid_map);
 set_bit(0, ha->req_qid_map);
 return 1;

fail_rsp_map:
 kfree(ha->req_q_map);
 ha->req_q_map = ((void*)0);
fail_req_map:
 return -ENOMEM;
}
