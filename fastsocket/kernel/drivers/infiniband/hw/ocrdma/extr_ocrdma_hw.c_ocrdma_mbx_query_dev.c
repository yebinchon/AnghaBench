
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_mqe {int dummy; } ;
struct ocrdma_mbx_query_config {int dummy; } ;
struct ocrdma_dev {int attr; } ;


 int ENOMEM ;
 int OCRDMA_CMD_QUERY_CONFIG ;
 int kfree (struct ocrdma_mqe*) ;
 int ocrdma_get_attr (struct ocrdma_dev*,int *,struct ocrdma_mbx_query_config*) ;
 struct ocrdma_mqe* ocrdma_init_emb_mqe (int ,int) ;
 int ocrdma_mbx_cmd (struct ocrdma_dev*,struct ocrdma_mqe*) ;

__attribute__((used)) static int ocrdma_mbx_query_dev(struct ocrdma_dev *dev)
{
 int status = -ENOMEM;
 struct ocrdma_mbx_query_config *rsp;
 struct ocrdma_mqe *cmd;

 cmd = ocrdma_init_emb_mqe(OCRDMA_CMD_QUERY_CONFIG, sizeof(*cmd));
 if (!cmd)
  return status;
 status = ocrdma_mbx_cmd(dev, (struct ocrdma_mqe *)cmd);
 if (status)
  goto mbx_err;
 rsp = (struct ocrdma_mbx_query_config *)cmd;
 ocrdma_get_attr(dev, &dev->attr, rsp);
mbx_err:
 kfree(cmd);
 return status;
}
