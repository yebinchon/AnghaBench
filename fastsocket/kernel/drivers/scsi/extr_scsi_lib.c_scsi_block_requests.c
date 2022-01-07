
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int host_self_blocked; } ;



void scsi_block_requests(struct Scsi_Host *shost)
{
 shost->host_self_blocked = 1;
}
