
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * cmd; } ;
struct ocrdma_mqe {TYPE_1__ u; } ;
struct ocrdma_mbx_hdr {int dummy; } ;
struct ocrdma_fw_conf_rsp {int dummy; } ;
struct ocrdma_dev {int dummy; } ;


 int ENOMEM ;
 int OCRDMA_CMD_GET_FW_CONFIG ;
 int OCRDMA_SUBSYS_COMMON ;
 int kfree (struct ocrdma_mqe*) ;
 int ocrdma_check_fw_config (struct ocrdma_dev*,struct ocrdma_fw_conf_rsp*) ;
 struct ocrdma_mqe* ocrdma_init_emb_mqe (int ,int) ;
 int ocrdma_init_mch (struct ocrdma_mbx_hdr*,int ,int ,int) ;
 int ocrdma_mbx_cmd (struct ocrdma_dev*,struct ocrdma_mqe*) ;

__attribute__((used)) static int ocrdma_mbx_query_fw_config(struct ocrdma_dev *dev)
{
 int status = -ENOMEM;
 struct ocrdma_mqe *cmd;
 struct ocrdma_fw_conf_rsp *rsp;

 cmd = ocrdma_init_emb_mqe(OCRDMA_CMD_GET_FW_CONFIG, sizeof(*cmd));
 if (!cmd)
  return -ENOMEM;
 ocrdma_init_mch((struct ocrdma_mbx_hdr *)&cmd->u.cmd[0],
   OCRDMA_CMD_GET_FW_CONFIG,
   OCRDMA_SUBSYS_COMMON, sizeof(*cmd));
 status = ocrdma_mbx_cmd(dev, (struct ocrdma_mqe *)cmd);
 if (status)
  goto mbx_err;
 rsp = (struct ocrdma_fw_conf_rsp *)cmd;
 status = ocrdma_check_fw_config(dev, rsp);
mbx_err:
 kfree(cmd);
 return status;
}
