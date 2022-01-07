
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocrdma_queue_info {int id; int created; int dma; int size; int va; } ;
struct TYPE_2__ {int netdev; } ;
struct ocrdma_dev {TYPE_1__ nic_info; struct ocrdma_create_cq_cmd_rsp* mbx_cmd; } ;
struct ocrdma_create_cq_cmd_rsp {int eqn; int cq_id; int pgsz_pgcnt; int * pa; int ev_cnt_flags; int req; } ;
struct ocrdma_create_cq_cmd {int eqn; int cq_id; int pgsz_pgcnt; int * pa; int ev_cnt_flags; int req; } ;


 int OCRDMA_CMD_CREATE_CQ ;
 int OCRDMA_CREATE_CQ_DEF_FLAGS ;
 int OCRDMA_CREATE_CQ_EQID_SHIFT ;
 int OCRDMA_CREATE_CQ_RSP_CQ_ID_MASK ;
 int OCRDMA_SUBSYS_COMMON ;
 int PAGES_4K_SPANNED (int ,int ) ;
 int PAGE_SIZE_4K ;
 int be_roce_mcc_cmd (int ,struct ocrdma_create_cq_cmd_rsp*,int,int *,int *) ;
 int memset (struct ocrdma_create_cq_cmd_rsp*,int ,int) ;
 int ocrdma_build_q_pages (int *,int ,int ,int ) ;
 int ocrdma_init_mch (int *,int ,int ,int) ;

__attribute__((used)) static int ocrdma_mbx_mq_cq_create(struct ocrdma_dev *dev,
       struct ocrdma_queue_info *cq,
       struct ocrdma_queue_info *eq)
{
 struct ocrdma_create_cq_cmd *cmd = dev->mbx_cmd;
 struct ocrdma_create_cq_cmd_rsp *rsp = dev->mbx_cmd;
 int status;

 memset(cmd, 0, sizeof(*cmd));
 ocrdma_init_mch(&cmd->req, OCRDMA_CMD_CREATE_CQ,
   OCRDMA_SUBSYS_COMMON, sizeof(*cmd));

 cmd->pgsz_pgcnt = PAGES_4K_SPANNED(cq->va, cq->size);
 cmd->ev_cnt_flags = OCRDMA_CREATE_CQ_DEF_FLAGS;
 cmd->eqn = (eq->id << OCRDMA_CREATE_CQ_EQID_SHIFT);

 ocrdma_build_q_pages(&cmd->pa[0], cmd->pgsz_pgcnt,
        cq->dma, PAGE_SIZE_4K);
 status = be_roce_mcc_cmd(dev->nic_info.netdev,
     cmd, sizeof(*cmd), ((void*)0), ((void*)0));
 if (!status) {
  cq->id = (rsp->cq_id & OCRDMA_CREATE_CQ_RSP_CQ_ID_MASK);
  cq->created = 1;
 }
 return status;
}
