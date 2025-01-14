
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ data; } ;
struct qib_pportdata {TYPE_1__ symerr_clear_timer; int led_override_timer_active; TYPE_1__ led_override_timer; TYPE_1__ hol_timer; } ;
struct qib_devdata {int num_pports; struct qib_pportdata* pport; TYPE_1__ intrchk_timer; TYPE_1__ stats_timer; } ;


 int atomic_set (int *,int ) ;
 int del_timer_sync (TYPE_1__*) ;

__attribute__((used)) static void qib_stop_timers(struct qib_devdata *dd)
{
 struct qib_pportdata *ppd;
 int pidx;

 if (dd->stats_timer.data) {
  del_timer_sync(&dd->stats_timer);
  dd->stats_timer.data = 0;
 }
 if (dd->intrchk_timer.data) {
  del_timer_sync(&dd->intrchk_timer);
  dd->intrchk_timer.data = 0;
 }
 for (pidx = 0; pidx < dd->num_pports; ++pidx) {
  ppd = dd->pport + pidx;
  if (ppd->hol_timer.data)
   del_timer_sync(&ppd->hol_timer);
  if (ppd->led_override_timer.data) {
   del_timer_sync(&ppd->led_override_timer);
   atomic_set(&ppd->led_override_timer_active, 0);
  }
  if (ppd->symerr_clear_timer.data)
   del_timer_sync(&ppd->symerr_clear_timer);
 }
}
