
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct iscsi_iface_param_info {int len; int value; } ;
struct beiscsi_hba {int dummy; } ;
struct TYPE_2__ {scalar_t__* addr; } ;
struct be_cmd_get_def_gateway_resp {TYPE_1__ ip_addr; } ;
typedef int gtway_addr_set ;


 int BE2_IPV4 ;
 int BEISCSI_LOG_CONFIG ;
 int IP_ACTION_ADD ;
 int IP_ACTION_DEL ;
 int KERN_WARNING ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*) ;
 int memset (struct be_cmd_get_def_gateway_resp*,int ,int) ;
 int mgmt_get_gateway (struct beiscsi_hba*,int ,struct be_cmd_get_def_gateway_resp*) ;
 int mgmt_modify_gateway (struct beiscsi_hba*,int *,int ,int ) ;

int mgmt_set_gateway(struct beiscsi_hba *phba,
       struct iscsi_iface_param_info *gateway_param)
{
 struct be_cmd_get_def_gateway_resp gtway_addr_set;
 uint8_t *gtway_addr;
 int rt_val;

 memset(&gtway_addr_set, 0, sizeof(gtway_addr_set));
 rt_val = mgmt_get_gateway(phba, BE2_IPV4, &gtway_addr_set);
 if (rt_val) {
  beiscsi_log(phba, KERN_WARNING, BEISCSI_LOG_CONFIG,
       "BG_%d : Failed to Get Gateway Addr\n");
  return rt_val;
 }

 if (gtway_addr_set.ip_addr.addr[0]) {
  gtway_addr = (uint8_t *)&gtway_addr_set.ip_addr.addr;
  rt_val = mgmt_modify_gateway(phba, gtway_addr, IP_ACTION_DEL,
          gateway_param->len);
  if (rt_val) {
   beiscsi_log(phba, KERN_WARNING, BEISCSI_LOG_CONFIG,
        "BG_%d : Failed to clear Gateway Addr Set\n");
   return rt_val;
  }
 }

 gtway_addr = (uint8_t *)&gateway_param->value;
 rt_val = mgmt_modify_gateway(phba, gtway_addr, IP_ACTION_ADD,
         gateway_param->len);

 if (rt_val)
  beiscsi_log(phba, KERN_WARNING, BEISCSI_LOG_CONFIG,
       "BG_%d : Failed to Set Gateway Addr\n");

 return rt_val;
}
