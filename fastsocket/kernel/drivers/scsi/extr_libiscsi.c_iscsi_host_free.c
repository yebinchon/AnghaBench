
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_host {int initiatorname; int hwaddress; int netdev; } ;
struct Scsi_Host {int dummy; } ;


 int kfree (int ) ;
 int scsi_host_put (struct Scsi_Host*) ;
 struct iscsi_host* shost_priv (struct Scsi_Host*) ;

void iscsi_host_free(struct Scsi_Host *shost)
{
 struct iscsi_host *ihost = shost_priv(shost);

 kfree(ihost->netdev);
 kfree(ihost->hwaddress);
 kfree(ihost->initiatorname);
 scsi_host_put(shost);
}
