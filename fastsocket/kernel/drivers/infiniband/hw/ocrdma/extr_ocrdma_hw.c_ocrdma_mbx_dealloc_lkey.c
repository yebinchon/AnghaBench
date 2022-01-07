
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocrdma_mqe {int dummy; } ;
struct ocrdma_dev {int dummy; } ;
struct ocrdma_dealloc_lkey {int rsvd_frmr; int lkey; } ;


 int ENOMEM ;
 int OCRDMA_CMD_DEALLOC_LKEY ;
 int kfree (struct ocrdma_dealloc_lkey*) ;
 struct ocrdma_dealloc_lkey* ocrdma_init_emb_mqe (int ,int) ;
 int ocrdma_mbx_cmd (struct ocrdma_dev*,struct ocrdma_mqe*) ;

int ocrdma_mbx_dealloc_lkey(struct ocrdma_dev *dev, int fr_mr, u32 lkey)
{
 int status = -ENOMEM;
 struct ocrdma_dealloc_lkey *cmd;

 cmd = ocrdma_init_emb_mqe(OCRDMA_CMD_DEALLOC_LKEY, sizeof(*cmd));
 if (!cmd)
  return -ENOMEM;
 cmd->lkey = lkey;
 cmd->rsvd_frmr = fr_mr ? 1 : 0;
 status = ocrdma_mbx_cmd(dev, (struct ocrdma_mqe *)cmd);
 if (status)
  goto mbx_err;
mbx_err:
 kfree(cmd);
 return status;
}
