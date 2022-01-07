
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {scalar_t__ can_queue; scalar_t__ host_busy; scalar_t__ host_self_blocked; scalar_t__ host_blocked; } ;



__attribute__((used)) static inline int scsi_host_is_busy(struct Scsi_Host *shost)
{
 if ((shost->can_queue > 0 && shost->host_busy >= shost->can_queue) ||
     shost->host_blocked || shost->host_self_blocked)
  return 1;

 return 0;
}
