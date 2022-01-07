
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {scalar_t__ shost_state; int shost_gendev; } ;


 scalar_t__ SHOST_DEL ;
 int get_device (int *) ;

struct Scsi_Host *scsi_host_get(struct Scsi_Host *shost)
{
 if ((shost->shost_state == SHOST_DEL) ||
  !get_device(&shost->shost_gendev))
  return ((void*)0);
 return shost;
}
