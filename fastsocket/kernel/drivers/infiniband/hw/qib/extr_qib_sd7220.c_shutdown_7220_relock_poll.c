
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_devdata {TYPE_1__* cspec; } ;
struct TYPE_2__ {int relock_timer; scalar_t__ relock_timer_active; } ;


 int del_timer_sync (int *) ;

void shutdown_7220_relock_poll(struct qib_devdata *dd)
{
 if (dd->cspec->relock_timer_active)
  del_timer_sync(&dd->cspec->relock_timer);
}
