
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned long data; void (* function ) (unsigned long) ;scalar_t__ expires; } ;
struct TYPE_5__ {int timer_active; TYPE_3__ timer; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 unsigned long HZ ;
 int add_timer (TYPE_3__*) ;
 int init_timer (TYPE_3__*) ;
 scalar_t__ jiffies ;

__inline__ void
qla2x00_start_timer(scsi_qla_host_t *vha, void *func, unsigned long interval)
{
 init_timer(&vha->timer);
 vha->timer.expires = jiffies + interval * HZ;
 vha->timer.data = (unsigned long)vha;
 vha->timer.function = (void (*)(unsigned long))func;
 add_timer(&vha->timer);
 vha->timer_active = 1;
}
