
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_host {int initiatorname; int hwaddress; int netdev; } ;
struct Scsi_Host {int dummy; } ;
typedef enum iscsi_host_param { ____Placeholder_iscsi_host_param } iscsi_host_param ;


 int ENOSYS ;



 int iscsi_switch_str_param (int *,char*) ;
 struct iscsi_host* shost_priv (struct Scsi_Host*) ;

int iscsi_host_set_param(struct Scsi_Host *shost, enum iscsi_host_param param,
    char *buf, int buflen)
{
 struct iscsi_host *ihost = shost_priv(shost);

 switch (param) {
 case 128:
  return iscsi_switch_str_param(&ihost->netdev, buf);
 case 130:
  return iscsi_switch_str_param(&ihost->hwaddress, buf);
 case 129:
  return iscsi_switch_str_param(&ihost->initiatorname, buf);
 default:
  return -ENOSYS;
 }

 return 0;
}
