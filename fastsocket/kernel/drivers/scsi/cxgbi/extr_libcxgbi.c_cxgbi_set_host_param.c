
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxgbi_hba {TYPE_1__* ndev; } ;
struct Scsi_Host {int dummy; } ;
typedef enum iscsi_host_param { ____Placeholder_iscsi_host_param } iscsi_host_param ;
typedef int __be32 ;
struct TYPE_2__ {int name; } ;


 int CXGBI_DBG_ISCSI ;
 int ENODEV ;



 int KERN_ERR ;
 int cxgbi_set_iscsi_ipv4 (struct cxgbi_hba*,int ) ;
 int in_aton (char*) ;
 struct cxgbi_hba* iscsi_host_priv (struct Scsi_Host*) ;
 int iscsi_host_set_param (struct Scsi_Host*,int,char*,int) ;
 int log_debug (int,char*,int ,struct cxgbi_hba*,...) ;
 int shost_printk (int ,struct Scsi_Host*,char*) ;

int cxgbi_set_host_param(struct Scsi_Host *shost, enum iscsi_host_param param,
   char *buf, int buflen)
{
 struct cxgbi_hba *chba = iscsi_host_priv(shost);

 if (!chba->ndev) {
  shost_printk(KERN_ERR, shost, "Could not get host param. "
    "netdev for host not set.\n");
  return -ENODEV;
 }

 log_debug(1 << CXGBI_DBG_ISCSI,
  "shost 0x%p, hba 0x%p,%s, param %d, buf(%d) %s.\n",
  shost, chba, chba->ndev->name, param, buflen, buf);

 switch (param) {
 case 129:
 {
  __be32 addr = in_aton(buf);
  log_debug(1 << CXGBI_DBG_ISCSI,
   "hba %s, req. ipv4 %pI4.\n", chba->ndev->name, &addr);
  cxgbi_set_iscsi_ipv4(chba, addr);
  return 0;
 }
 case 130:
 case 128:
  return 0;
 default:
  return iscsi_host_set_param(shost, param, buf, buflen);
 }
}
