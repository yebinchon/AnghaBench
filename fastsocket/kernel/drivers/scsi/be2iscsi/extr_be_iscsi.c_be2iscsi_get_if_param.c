
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_iface {scalar_t__ iface_type; } ;
struct beiscsi_hba {int dummy; } ;
struct TYPE_2__ {int subnet_mask; int addr; } ;
struct be_cmd_get_if_info_resp {int vlan_priority; TYPE_1__ ip_addr; int dhcp_state; } ;
typedef int if_info ;


 int BE2_IPV4 ;
 int BE2_IPV6 ;
 int BEISCSI_VLAN_DISABLE ;
 int EINVAL ;
 scalar_t__ ISCSI_IFACE_TYPE_IPV6 ;
 int ISCSI_MAX_VLAN_ID ;
 int ISCSI_MAX_VLAN_PRIORITY ;







 int WARN_ON (int) ;
 int memset (struct be_cmd_get_if_info_resp*,int ,int) ;
 int mgmt_get_if_info (struct beiscsi_hba*,int,struct be_cmd_get_if_info_resp*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static int be2iscsi_get_if_param(struct beiscsi_hba *phba,
  struct iscsi_iface *iface, int param,
  char *buf)
{
 struct be_cmd_get_if_info_resp if_info;
 int len, ip_type = BE2_IPV4;

 memset(&if_info, 0, sizeof(if_info));

 if (iface->iface_type == ISCSI_IFACE_TYPE_IPV6)
  ip_type = BE2_IPV6;

 len = mgmt_get_if_info(phba, ip_type, &if_info);
 if (len)
  return len;

 switch (param) {
 case 134:
  len = sprintf(buf, "%pI4\n", &if_info.ip_addr.addr);
  break;
 case 131:
  len = sprintf(buf, "%pI6\n", &if_info.ip_addr.addr);
  break;
 case 133:
  if (!if_info.dhcp_state)
   len = sprintf(buf, "static\n");
  else
   len = sprintf(buf, "dhcp\n");
  break;
 case 132:
  len = sprintf(buf, "%pI4\n", &if_info.ip_addr.subnet_mask);
  break;
 case 130:
  len = sprintf(buf, "%s\n",
        (if_info.vlan_priority == BEISCSI_VLAN_DISABLE)
        ? "Disabled\n" : "Enabled\n");
  break;
 case 129:
  if (if_info.vlan_priority == BEISCSI_VLAN_DISABLE)
   return -EINVAL;
  else
   len = sprintf(buf, "%d\n",
         (if_info.vlan_priority &
         ISCSI_MAX_VLAN_ID));
  break;
 case 128:
  if (if_info.vlan_priority == BEISCSI_VLAN_DISABLE)
   return -EINVAL;
  else
   len = sprintf(buf, "%d\n",
         ((if_info.vlan_priority >> 13) &
         ISCSI_MAX_VLAN_PRIORITY));
  break;
 default:
  WARN_ON(1);
 }

 return len;
}
