
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nlattr {int dummy; } ;
struct iscsi_iface_param_info {int param; } ;
struct beiscsi_hba {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int BEISCSI_LOG_CONFIG ;
 int EINVAL ;
 int ISCSI_BOOTPROTO_STATIC ;



 int KERN_ERR ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,...) ;
 struct beiscsi_hba* iscsi_host_priv (struct Scsi_Host*) ;
 int mgmt_set_ip (struct beiscsi_hba*,struct iscsi_iface_param_info*,struct iscsi_iface_param_info*,int ) ;
 struct iscsi_iface_param_info* nla_data (struct nlattr*) ;
 struct nlattr* nla_find (void*,int ,int const) ;

__attribute__((used)) static int
beiscsi_set_static_ip(struct Scsi_Host *shost,
  struct iscsi_iface_param_info *iface_param,
  void *data, uint32_t dt_len)
{
 struct beiscsi_hba *phba = iscsi_host_priv(shost);
 struct iscsi_iface_param_info *iface_ip = ((void*)0);
 struct iscsi_iface_param_info *iface_subnet = ((void*)0);
 struct nlattr *nla;
 int ret;


 switch (iface_param->param) {
 case 129:
  nla = nla_find(data, dt_len, 130);
  if (nla)
   iface_ip = nla_data(nla);

  nla = nla_find(data, dt_len, 128);
  if (nla)
   iface_subnet = nla_data(nla);
  break;
 case 130:
  iface_ip = iface_param;
  nla = nla_find(data, dt_len, 128);
  if (nla)
   iface_subnet = nla_data(nla);
  break;
 case 128:
  iface_subnet = iface_param;
  nla = nla_find(data, dt_len, 130);
  if (nla)
   iface_ip = nla_data(nla);
  break;
 default:
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
       "BS_%d : Unsupported param %d\n",
       iface_param->param);
 }

 if (!iface_ip || !iface_subnet) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
       "BS_%d : IP and Subnet Mask required\n");
  return -EINVAL;
 }

 ret = mgmt_set_ip(phba, iface_ip, iface_subnet,
   ISCSI_BOOTPROTO_STATIC);

 return ret;
}
