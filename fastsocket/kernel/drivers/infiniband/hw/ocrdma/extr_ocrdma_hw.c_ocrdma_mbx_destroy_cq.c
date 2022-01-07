
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocrdma_mqe {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct ocrdma_dev {TYPE_2__ nic_info; } ;
struct ocrdma_destroy_cq {int bypass_flush_qid; int req; } ;
struct ocrdma_cq {int id; int pa; int va; int len; int eqn; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int OCRDMA_CMD_DELETE_CQ ;
 int OCRDMA_DESTROY_CQ_QID_MASK ;
 int OCRDMA_DESTROY_CQ_QID_SHIFT ;
 int OCRDMA_SUBSYS_COMMON ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int kfree (struct ocrdma_destroy_cq*) ;
 struct ocrdma_destroy_cq* ocrdma_init_emb_mqe (int ,int) ;
 int ocrdma_init_mch (int *,int ,int ,int) ;
 int ocrdma_mbx_cmd (struct ocrdma_dev*,struct ocrdma_mqe*) ;
 int ocrdma_unbind_eq (struct ocrdma_dev*,int ) ;

int ocrdma_mbx_destroy_cq(struct ocrdma_dev *dev, struct ocrdma_cq *cq)
{
 int status = -ENOMEM;
 struct ocrdma_destroy_cq *cmd;

 cmd = ocrdma_init_emb_mqe(OCRDMA_CMD_DELETE_CQ, sizeof(*cmd));
 if (!cmd)
  return status;
 ocrdma_init_mch(&cmd->req, OCRDMA_CMD_DELETE_CQ,
   OCRDMA_SUBSYS_COMMON, sizeof(*cmd));

 cmd->bypass_flush_qid |=
     (cq->id << OCRDMA_DESTROY_CQ_QID_SHIFT) &
     OCRDMA_DESTROY_CQ_QID_MASK;

 ocrdma_unbind_eq(dev, cq->eqn);
 status = ocrdma_mbx_cmd(dev, (struct ocrdma_mqe *)cmd);
 if (status)
  goto mbx_err;
 dma_free_coherent(&dev->nic_info.pdev->dev, cq->len, cq->va, cq->pa);
mbx_err:
 kfree(cmd);
 return status;
}
