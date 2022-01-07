
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocrdma_qp {int state; int id; } ;
struct ocrdma_mqe {int dummy; } ;
struct TYPE_2__ {int max_sge_recv_flags; int id; } ;
struct ocrdma_modify_qp {TYPE_1__ params; int flags; } ;
struct ocrdma_dev {int dummy; } ;
struct ib_qp_attr {int qp_state; } ;
typedef enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;


 int ENOMEM ;
 int IB_QP_STATE ;
 int OCRDMA_CMD_MODIFY_QP ;
 int OCRDMA_QP_PARAMS_STATE_MASK ;
 int OCRDMA_QP_PARAMS_STATE_SHIFT ;
 int OCRDMA_QP_PARA_QPS_VALID ;
 int get_ocrdma_qp_state (int ) ;
 int kfree (struct ocrdma_modify_qp*) ;
 struct ocrdma_modify_qp* ocrdma_init_emb_mqe (int ,int) ;
 int ocrdma_mbx_cmd (struct ocrdma_dev*,struct ocrdma_mqe*) ;
 int ocrdma_set_qp_params (struct ocrdma_qp*,struct ocrdma_modify_qp*,struct ib_qp_attr*,int,int) ;

int ocrdma_mbx_modify_qp(struct ocrdma_dev *dev, struct ocrdma_qp *qp,
    struct ib_qp_attr *attrs, int attr_mask,
    enum ib_qp_state old_qps)
{
 int status = -ENOMEM;
 struct ocrdma_modify_qp *cmd;

 cmd = ocrdma_init_emb_mqe(OCRDMA_CMD_MODIFY_QP, sizeof(*cmd));
 if (!cmd)
  return status;

 cmd->params.id = qp->id;
 cmd->flags = 0;
 if (attr_mask & IB_QP_STATE) {
  cmd->params.max_sge_recv_flags |=
      (get_ocrdma_qp_state(attrs->qp_state) <<
       OCRDMA_QP_PARAMS_STATE_SHIFT) &
      OCRDMA_QP_PARAMS_STATE_MASK;
  cmd->flags |= OCRDMA_QP_PARA_QPS_VALID;
 } else
  cmd->params.max_sge_recv_flags |=
      (qp->state << OCRDMA_QP_PARAMS_STATE_SHIFT) &
      OCRDMA_QP_PARAMS_STATE_MASK;
 status = ocrdma_set_qp_params(qp, cmd, attrs, attr_mask, old_qps);
 if (status)
  goto mbx_err;
 status = ocrdma_mbx_cmd(dev, (struct ocrdma_mqe *)cmd);
 if (status)
  goto mbx_err;

mbx_err:
 kfree(cmd);
 return status;
}
