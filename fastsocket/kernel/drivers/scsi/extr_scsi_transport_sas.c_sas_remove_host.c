
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int shost_gendev; } ;


 int sas_remove_children (int *) ;

void sas_remove_host(struct Scsi_Host *shost)
{
 sas_remove_children(&shost->shost_gendev);
}
