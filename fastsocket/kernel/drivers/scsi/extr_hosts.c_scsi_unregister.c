
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int sht_legacy_list; } ;


 int list_del (int *) ;
 int scsi_host_put (struct Scsi_Host*) ;

void scsi_unregister(struct Scsi_Host *shost)
{
 list_del(&shost->sht_legacy_list);
 scsi_host_put(shost);
}
