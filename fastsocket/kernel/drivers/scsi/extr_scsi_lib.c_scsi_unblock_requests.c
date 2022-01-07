
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {scalar_t__ host_self_blocked; } ;


 int scsi_run_host_queues (struct Scsi_Host*) ;

void scsi_unblock_requests(struct Scsi_Host *shost)
{
 shost->host_self_blocked = 0;
 scsi_run_host_queues(shost);
}
