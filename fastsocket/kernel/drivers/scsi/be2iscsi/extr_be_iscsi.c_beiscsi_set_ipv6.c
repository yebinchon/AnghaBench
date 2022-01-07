
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iscsi_iface_param_info {int param; int * value; } ;
struct beiscsi_hba {int ipv6_iface; } ;
struct Scsi_Host {int dummy; } ;


 int BEISCSI_LOG_CONFIG ;
 int ISCSI_BOOTPROTO_STATIC ;
 int ISCSI_IFACE_ENABLE ;


 int KERN_ERR ;
 int beiscsi_create_ipv6_iface (struct beiscsi_hba*) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,int) ;
 int iscsi_destroy_iface (int ) ;
 struct beiscsi_hba* iscsi_host_priv (struct Scsi_Host*) ;
 int mgmt_set_ip (struct beiscsi_hba*,struct iscsi_iface_param_info*,int *,int ) ;

__attribute__((used)) static int
beiscsi_set_ipv6(struct Scsi_Host *shost,
  struct iscsi_iface_param_info *iface_param,
  void *data, uint32_t dt_len)
{
 struct beiscsi_hba *phba = iscsi_host_priv(shost);
 int ret = 0;

 switch (iface_param->param) {
 case 129:
  if (iface_param->value[0] == ISCSI_IFACE_ENABLE)
   ret = beiscsi_create_ipv6_iface(phba);
  else {
   iscsi_destroy_iface(phba->ipv6_iface);
   ret = 0;
  }
  break;
 case 128:
  ret = mgmt_set_ip(phba, iface_param, ((void*)0),
      ISCSI_BOOTPROTO_STATIC);
  break;
 default:
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
       "BS_%d : Param %d not supported\n",
       iface_param->param);
 }

 return ret;
}
