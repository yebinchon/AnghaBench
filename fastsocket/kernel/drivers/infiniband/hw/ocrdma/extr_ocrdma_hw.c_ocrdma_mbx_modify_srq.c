
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_srq {int dev; int id; } ;
struct ocrdma_mqe {int dummy; } ;
struct ocrdma_modify_srq {int limit_max_rqe; int id; } ;
struct ib_srq_attr {int srq_limit; } ;


 int ENOMEM ;
 int OCRDMA_CMD_CREATE_SRQ ;
 int OCRDMA_MODIFY_SRQ_LIMIT_SHIFT ;
 int kfree (struct ocrdma_modify_srq*) ;
 struct ocrdma_modify_srq* ocrdma_init_emb_mqe (int ,int) ;
 int ocrdma_mbx_cmd (int ,struct ocrdma_mqe*) ;

int ocrdma_mbx_modify_srq(struct ocrdma_srq *srq, struct ib_srq_attr *srq_attr)
{
 int status = -ENOMEM;
 struct ocrdma_modify_srq *cmd;
 cmd = ocrdma_init_emb_mqe(OCRDMA_CMD_CREATE_SRQ, sizeof(*cmd));
 if (!cmd)
  return status;
 cmd->id = srq->id;
 cmd->limit_max_rqe |= srq_attr->srq_limit <<
     OCRDMA_MODIFY_SRQ_LIMIT_SHIFT;
 status = ocrdma_mbx_cmd(srq->dev, (struct ocrdma_mqe *)cmd);
 kfree(cmd);
 return status;
}
