
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct iscsi_iface_param_info {scalar_t__ param; int len; int value; } ;
struct beiscsi_hba {int interface_handle; } ;
struct be_ip_addr_subnet_format {int dummy; } ;
struct be_dma_mem {struct be_cmd_set_ip_addr_req* va; } ;
struct TYPE_5__ {int size_of_structure; int subnet_mask; int addr; scalar_t__ ip_type; } ;
struct TYPE_6__ {TYPE_1__ ip_addr; int interface_hndl; scalar_t__ action; } ;
struct TYPE_7__ {int record_entry_count; TYPE_2__ ip_record; } ;
struct be_cmd_set_ip_addr_req {TYPE_3__ ip_params; } ;
struct TYPE_8__ {int subnet_mask; int addr; } ;
struct be_cmd_get_if_info_resp {TYPE_4__ ip_addr; } ;


 scalar_t__ BE2_IPV4 ;
 scalar_t__ BE2_IPV6 ;
 int BEISCSI_LOG_CONFIG ;
 scalar_t__ IP_ACTION_ADD ;
 scalar_t__ ISCSI_NET_PARAM_IPV6_ADDR ;
 int KERN_WARNING ;
 int OPCODE_COMMON_ISCSI_NTWK_MODIFY_IP_ADDR ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*) ;
 int memcpy (int ,int ,int ) ;
 int mgmt_alloc_cmd_data (struct beiscsi_hba*,struct be_dma_mem*,int ,int) ;
 int mgmt_exec_nonemb_cmd (struct beiscsi_hba*,struct be_dma_mem*,int *,int ) ;

__attribute__((used)) static int
mgmt_static_ip_modify(struct beiscsi_hba *phba,
        struct be_cmd_get_if_info_resp *if_info,
        struct iscsi_iface_param_info *ip_param,
        struct iscsi_iface_param_info *subnet_param,
        uint32_t ip_action)
{
 struct be_cmd_set_ip_addr_req *req;
 struct be_dma_mem nonemb_cmd;
 uint32_t ip_type;
 int rc;

 rc = mgmt_alloc_cmd_data(phba, &nonemb_cmd,
     OPCODE_COMMON_ISCSI_NTWK_MODIFY_IP_ADDR,
     sizeof(*req));
 if (rc)
  return rc;

 ip_type = (ip_param->param == ISCSI_NET_PARAM_IPV6_ADDR) ?
  BE2_IPV6 : BE2_IPV4 ;

 req = nonemb_cmd.va;
 req->ip_params.record_entry_count = 1;
 req->ip_params.ip_record.action = ip_action;
 req->ip_params.ip_record.interface_hndl =
  phba->interface_handle;
 req->ip_params.ip_record.ip_addr.size_of_structure =
  sizeof(struct be_ip_addr_subnet_format);
 req->ip_params.ip_record.ip_addr.ip_type = ip_type;

 if (ip_action == IP_ACTION_ADD) {
  memcpy(req->ip_params.ip_record.ip_addr.addr, ip_param->value,
         ip_param->len);

  if (subnet_param)
   memcpy(req->ip_params.ip_record.ip_addr.subnet_mask,
          subnet_param->value, subnet_param->len);
 } else {
  memcpy(req->ip_params.ip_record.ip_addr.addr,
         if_info->ip_addr.addr, ip_param->len);

  memcpy(req->ip_params.ip_record.ip_addr.subnet_mask,
         if_info->ip_addr.subnet_mask, ip_param->len);
 }

 rc = mgmt_exec_nonemb_cmd(phba, &nonemb_cmd, ((void*)0), 0);
 if (rc < 0)
  beiscsi_log(phba, KERN_WARNING, BEISCSI_LOG_CONFIG,
       "BG_%d : Failed to Modify existing IP Address\n");
 return rc;
}
