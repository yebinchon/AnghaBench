
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {struct Scsi_Host* scsi_host; } ;
struct Scsi_Host {int dummy; } ;


 int fc_remove_host (struct Scsi_Host*) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;

void zfcp_adapter_scsi_unregister(struct zfcp_adapter *adapter)
{
 struct Scsi_Host *shost;

 shost = adapter->scsi_host;
 if (!shost)
  return;

 fc_remove_host(shost);
 scsi_remove_host(shost);
 scsi_host_put(shost);
 adapter->scsi_host = ((void*)0);
}
