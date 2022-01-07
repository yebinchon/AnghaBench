
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_iface {int dummy; } ;
struct beiscsi_hba {int dummy; } ;
struct TYPE_2__ {int addr; } ;
struct be_cmd_get_def_gateway_resp {TYPE_1__ ip_addr; } ;
struct Scsi_Host {int dummy; } ;
typedef int gateway ;
typedef enum iscsi_param_type { ____Placeholder_iscsi_param_type } iscsi_param_type ;


 int BE2_IPV4 ;
 int ENOSYS ;
 int be2iscsi_get_if_param (struct beiscsi_hba*,struct iscsi_iface*,int,char*) ;
 struct beiscsi_hba* iscsi_host_priv (struct Scsi_Host*) ;
 struct Scsi_Host* iscsi_iface_to_shost (struct iscsi_iface*) ;
 int memset (struct be_cmd_get_def_gateway_resp*,int ,int) ;
 int mgmt_get_gateway (struct beiscsi_hba*,int ,struct be_cmd_get_def_gateway_resp*) ;
 int sprintf (char*,char*,...) ;

int be2iscsi_iface_get_param(struct iscsi_iface *iface,
  enum iscsi_param_type param_type,
  int param, char *buf)
{
 struct Scsi_Host *shost = iscsi_iface_to_shost(iface);
 struct beiscsi_hba *phba = iscsi_host_priv(shost);
 struct be_cmd_get_def_gateway_resp gateway;
 int len = -ENOSYS;

 switch (param) {
 case 135:
 case 132:
 case 134:
 case 131:
 case 130:
 case 129:
 case 128:
  len = be2iscsi_get_if_param(phba, iface, param, buf);
  break;
 case 136:
  len = sprintf(buf, "enabled\n");
  break;
 case 133:
  memset(&gateway, 0, sizeof(gateway));
  len = mgmt_get_gateway(phba, BE2_IPV4, &gateway);
  if (!len)
   len = sprintf(buf, "%pI4\n", &gateway.ip_addr.addr);
  break;
 default:
  len = -ENOSYS;
 }

 return len;
}
