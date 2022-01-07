
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_query_qp_rsp {int params; } ;
struct ocrdma_query_qp {int qp_id; } ;
struct ocrdma_qp_params {int dummy; } ;
struct ocrdma_qp {int id; } ;
struct ocrdma_mqe {int dummy; } ;
struct ocrdma_dev {int dummy; } ;


 int ENOMEM ;
 int OCRDMA_CMD_QUERY_QP ;
 int kfree (struct ocrdma_query_qp*) ;
 int memcpy (struct ocrdma_qp_params*,int *,int) ;
 struct ocrdma_query_qp* ocrdma_init_emb_mqe (int ,int) ;
 int ocrdma_mbx_cmd (struct ocrdma_dev*,struct ocrdma_mqe*) ;

int ocrdma_mbx_query_qp(struct ocrdma_dev *dev, struct ocrdma_qp *qp,
   struct ocrdma_qp_params *param)
{
 int status = -ENOMEM;
 struct ocrdma_query_qp *cmd;
 struct ocrdma_query_qp_rsp *rsp;

 cmd = ocrdma_init_emb_mqe(OCRDMA_CMD_QUERY_QP, sizeof(*cmd));
 if (!cmd)
  return status;
 cmd->qp_id = qp->id;
 status = ocrdma_mbx_cmd(dev, (struct ocrdma_mqe *)cmd);
 if (status)
  goto mbx_err;
 rsp = (struct ocrdma_query_qp_rsp *)cmd;
 memcpy(param, &rsp->params, sizeof(struct ocrdma_qp_params));
mbx_err:
 kfree(cmd);
 return status;
}
