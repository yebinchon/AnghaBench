
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int device_flags; int timer; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int DFLG_DEV_FAILED ;
 unsigned long HZ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int ql_dbg (int ,TYPE_1__*,int,char*) ;
 int ql_dbg_timer ;

__attribute__((used)) static inline void
qla2x00_restart_timer(scsi_qla_host_t *vha, unsigned long interval)
{

 if (vha->device_flags & DFLG_DEV_FAILED) {
  ql_dbg(ql_dbg_timer, vha, 0x600d,
      "Device in a failed state, returning.\n");
  return;
 }

 mod_timer(&vha->timer, jiffies + interval * HZ);
}
