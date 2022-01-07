
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ timer_active; int timer; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int del_timer_sync (int *) ;

__attribute__((used)) static __inline__ void
qla2x00_stop_timer(scsi_qla_host_t *vha)
{
 del_timer_sync(&vha->timer);
 vha->timer_active = 0;
}
