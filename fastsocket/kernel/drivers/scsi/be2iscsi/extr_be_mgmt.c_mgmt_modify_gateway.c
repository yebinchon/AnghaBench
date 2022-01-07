
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct beiscsi_hba {int dummy; } ;
struct be_dma_mem {struct be_cmd_set_def_gateway_req* va; } ;
struct TYPE_2__ {int addr; int ip_type; } ;
struct be_cmd_set_def_gateway_req {TYPE_1__ ip_addr; int action; } ;


 int BE2_IPV4 ;
 int OPCODE_COMMON_ISCSI_NTWK_MODIFY_DEFAULT_GATEWAY ;
 int memcpy (int ,int *,int ) ;
 int mgmt_alloc_cmd_data (struct beiscsi_hba*,struct be_dma_mem*,int ,int) ;
 int mgmt_exec_nonemb_cmd (struct beiscsi_hba*,struct be_dma_mem*,int *,int ) ;

__attribute__((used)) static int mgmt_modify_gateway(struct beiscsi_hba *phba, uint8_t *gt_addr,
          uint32_t gtway_action, uint32_t param_len)
{
 struct be_cmd_set_def_gateway_req *req;
 struct be_dma_mem nonemb_cmd;
 int rt_val;


 rt_val = mgmt_alloc_cmd_data(phba, &nonemb_cmd,
    OPCODE_COMMON_ISCSI_NTWK_MODIFY_DEFAULT_GATEWAY,
    sizeof(*req));
 if (rt_val)
  return rt_val;

 req = nonemb_cmd.va;
 req->action = gtway_action;
 req->ip_addr.ip_type = BE2_IPV4;

 memcpy(req->ip_addr.addr, gt_addr, param_len);

 return mgmt_exec_nonemb_cmd(phba, &nonemb_cmd, ((void*)0), 0);
}
