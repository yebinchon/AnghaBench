
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beiscsi_hba {int dummy; } ;
struct be_dma_mem {struct be_cmd_get_def_gateway_req* va; } ;
struct be_cmd_get_def_gateway_resp {int dummy; } ;
struct be_cmd_get_def_gateway_req {int ip_type; } ;


 int OPCODE_COMMON_ISCSI_NTWK_GET_DEFAULT_GATEWAY ;
 int mgmt_alloc_cmd_data (struct beiscsi_hba*,struct be_dma_mem*,int ,int) ;
 int mgmt_exec_nonemb_cmd (struct beiscsi_hba*,struct be_dma_mem*,struct be_cmd_get_def_gateway_resp*,int) ;

int mgmt_get_gateway(struct beiscsi_hba *phba, int ip_type,
       struct be_cmd_get_def_gateway_resp *gateway)
{
 struct be_cmd_get_def_gateway_req *req;
 struct be_dma_mem nonemb_cmd;
 int rc;

 rc = mgmt_alloc_cmd_data(phba, &nonemb_cmd,
     OPCODE_COMMON_ISCSI_NTWK_GET_DEFAULT_GATEWAY,
     sizeof(*gateway));
 if (rc)
  return rc;

 req = nonemb_cmd.va;
 req->ip_type = ip_type;

 return mgmt_exec_nonemb_cmd(phba, &nonemb_cmd, gateway,
        sizeof(*gateway));
}
