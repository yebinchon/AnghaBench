
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_host {int sas_ha; } ;
struct Scsi_Host {int dummy; } ;


 int sas_remove_host (struct Scsi_Host*) ;
 int sas_unregister_ha (int *) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 struct Scsi_Host* to_shost (struct isci_host*) ;

__attribute__((used)) static void isci_unregister(struct isci_host *isci_host)
{
 struct Scsi_Host *shost;

 if (!isci_host)
  return;

 sas_unregister_ha(&isci_host->sas_ha);

 shost = to_shost(isci_host);
 sas_remove_host(shost);
 scsi_remove_host(shost);
 scsi_host_put(shost);
}
