
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iscsi_iface_param_info {int param; int* value; } ;
struct beiscsi_hba {int ipv4_iface; } ;
struct Scsi_Host {int dummy; } ;


 int BEISCSI_LOG_CONFIG ;
 int ISCSI_BOOTPROTO_DHCP ;
 int ISCSI_BOOTPROTO_STATIC ;
 int ISCSI_IFACE_ENABLE ;







 int KERN_ERR ;
 int beiscsi_create_ipv4_iface (struct beiscsi_hba*) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,int) ;
 int beiscsi_set_static_ip (struct Scsi_Host*,struct iscsi_iface_param_info*,void*,int ) ;
 int beiscsi_set_vlan_tag (struct Scsi_Host*,struct iscsi_iface_param_info*) ;
 int iscsi_destroy_iface (int ) ;
 struct beiscsi_hba* iscsi_host_priv (struct Scsi_Host*) ;
 int mgmt_set_gateway (struct beiscsi_hba*,struct iscsi_iface_param_info*) ;
 int mgmt_set_ip (struct beiscsi_hba*,struct iscsi_iface_param_info*,int *,int) ;

__attribute__((used)) static int
beiscsi_set_ipv4(struct Scsi_Host *shost,
  struct iscsi_iface_param_info *iface_param,
  void *data, uint32_t dt_len)
{
 struct beiscsi_hba *phba = iscsi_host_priv(shost);
 int ret = 0;


 switch (iface_param->param) {
 case 131:
  ret = mgmt_set_gateway(phba, iface_param);
  break;
 case 132:
  if (iface_param->value[0] == ISCSI_BOOTPROTO_DHCP)
   ret = mgmt_set_ip(phba, iface_param,
     ((void*)0), ISCSI_BOOTPROTO_DHCP);
  else if (iface_param->value[0] == ISCSI_BOOTPROTO_STATIC)
   ret = beiscsi_set_static_ip(shost, iface_param,
          data, dt_len);
  else
   beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
        "BS_%d : Invalid BOOTPROTO: %d\n",
        iface_param->value[0]);
  break;
 case 134:
  if (iface_param->value[0] == ISCSI_IFACE_ENABLE)
   ret = beiscsi_create_ipv4_iface(phba);
  else
   iscsi_destroy_iface(phba->ipv4_iface);
  break;
 case 130:
 case 133:
  ret = beiscsi_set_static_ip(shost, iface_param,
         data, dt_len);
  break;
 case 129:
 case 128:
  ret = beiscsi_set_vlan_tag(shost, iface_param);
  break;
 default:
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
       "BS_%d : Param %d not supported\n",
       iface_param->param);
 }

 return ret;
}
