
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_host {char* netdev; char* hwaddress; char* initiatorname; } ;
struct Scsi_Host {int dummy; } ;
typedef enum iscsi_host_param { ____Placeholder_iscsi_host_param } iscsi_host_param ;


 int ENOSYS ;



 struct iscsi_host* shost_priv (struct Scsi_Host*) ;
 int sprintf (char*,char*,char*) ;

int iscsi_host_get_param(struct Scsi_Host *shost, enum iscsi_host_param param,
    char *buf)
{
 struct iscsi_host *ihost = shost_priv(shost);
 int len;

 switch (param) {
 case 128:
  len = sprintf(buf, "%s\n", ihost->netdev);
  break;
 case 130:
  len = sprintf(buf, "%s\n", ihost->hwaddress);
  break;
 case 129:
  len = sprintf(buf, "%s\n", ihost->initiatorname);
  break;
 default:
  return -ENOSYS;
 }

 return len;
}
