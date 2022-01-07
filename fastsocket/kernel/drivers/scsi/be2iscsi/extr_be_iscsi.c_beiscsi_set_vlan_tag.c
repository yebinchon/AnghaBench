
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct iscsi_iface_param_info {int param; int * value; } ;
struct beiscsi_hba {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int BEISCSI_LOG_CONFIG ;
 int BEISCSI_VLAN_DISABLE ;
 int EIO ;
 int ENOSYS ;


 int ISCSI_VLAN_ENABLE ;
 int KERN_ERR ;
 int KERN_WARNING ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,...) ;
 struct beiscsi_hba* iscsi_host_priv (struct Scsi_Host*) ;
 scalar_t__ mgmt_get_all_if_id (struct beiscsi_hba*) ;
 int mgmt_set_vlan (struct beiscsi_hba*,int ) ;

__attribute__((used)) static int
beiscsi_set_vlan_tag(struct Scsi_Host *shost,
        struct iscsi_iface_param_info *iface_param)
{
 struct beiscsi_hba *phba = iscsi_host_priv(shost);
 int ret = 0;


 if (mgmt_get_all_if_id(phba)) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
       "BS_%d : Getting Interface Handle Failed\n");
  return -EIO;
 }

 switch (iface_param->param) {
 case 129:
  if (iface_param->value[0] != ISCSI_VLAN_ENABLE)
   ret = mgmt_set_vlan(phba, BEISCSI_VLAN_DISABLE);
  break;
 case 128:
  ret = mgmt_set_vlan(phba,
        *((uint16_t *)iface_param->value));
  break;
 default:
  beiscsi_log(phba, KERN_WARNING, BEISCSI_LOG_CONFIG,
       "BS_%d : Unkown Param Type : %d\n",
       iface_param->param);
  return -ENOSYS;
 }
 return ret;
}
