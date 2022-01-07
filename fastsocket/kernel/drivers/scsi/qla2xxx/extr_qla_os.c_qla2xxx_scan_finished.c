
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct Scsi_Host {int dummy; } ;
struct TYPE_5__ {int loop_state; TYPE_1__* hw; int host; } ;
typedef TYPE_2__ scsi_qla_host_t ;
struct TYPE_4__ {unsigned long loop_reset_delay; } ;


 unsigned long HZ ;
 scalar_t__ LOOP_READY ;
 scalar_t__ atomic_read (int *) ;
 TYPE_2__* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static int
qla2xxx_scan_finished(struct Scsi_Host *shost, unsigned long time)
{
 scsi_qla_host_t *vha = shost_priv(shost);

 if (!vha->host)
  return 1;
 if (time > vha->hw->loop_reset_delay * HZ)
  return 1;

 return atomic_read(&vha->loop_state) == LOOP_READY;
}
