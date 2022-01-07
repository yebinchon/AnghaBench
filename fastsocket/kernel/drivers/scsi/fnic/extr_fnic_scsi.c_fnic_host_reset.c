
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct fc_lport {scalar_t__ state; scalar_t__ link_up; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;


 int FAILED ;
 unsigned long FNIC_HOST_RESET_SETTLE_TIME ;
 unsigned long HZ ;
 scalar_t__ LPORT_ST_READY ;
 int SUCCESS ;
 int fnic_reset (struct Scsi_Host*) ;
 unsigned long jiffies ;
 struct fc_lport* shost_priv (struct Scsi_Host*) ;
 int ssleep (int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

int fnic_host_reset(struct scsi_cmnd *sc)
{
 int ret;
 unsigned long wait_host_tmo;
 struct Scsi_Host *shost = sc->device->host;
 struct fc_lport *lp = shost_priv(shost);






 ret = fnic_reset(shost);
 if (ret == SUCCESS) {
  wait_host_tmo = jiffies + FNIC_HOST_RESET_SETTLE_TIME * HZ;
  ret = FAILED;
  while (time_before(jiffies, wait_host_tmo)) {
   if ((lp->state == LPORT_ST_READY) &&
       (lp->link_up)) {
    ret = SUCCESS;
    break;
   }
   ssleep(1);
  }
 }

 return ret;
}
