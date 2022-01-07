
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long data; scalar_t__ expires; int function; } ;
struct qib_pportdata {unsigned int* led_override_vals; int led_override_timeoff; int led_override_timer_active; TYPE_1__ led_override_timer; struct qib_devdata* dd; } ;
struct qib_devdata {int flags; } ;


 int HZ ;
 unsigned int LED_OVER_FREQ_MASK ;
 unsigned int LED_OVER_FREQ_SHIFT ;
 int QIB_INITTED ;
 int add_timer (TYPE_1__*) ;
 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 int init_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int mod_timer (TYPE_1__*,scalar_t__) ;
 int qib_run_led_override ;

void qib_set_led_override(struct qib_pportdata *ppd, unsigned int val)
{
 struct qib_devdata *dd = ppd->dd;
 int timeoff, freq;

 if (!(dd->flags & QIB_INITTED))
  return;


 timeoff = HZ;
 freq = (val & LED_OVER_FREQ_MASK) >> LED_OVER_FREQ_SHIFT;

 if (freq) {

  ppd->led_override_vals[0] = val & 0xF;
  ppd->led_override_vals[1] = (val >> 4) & 0xF;
  timeoff = (HZ << 4)/freq;
 } else {

  ppd->led_override_vals[0] = val & 0xF;
  ppd->led_override_vals[1] = val & 0xF;
 }
 ppd->led_override_timeoff = timeoff;





 if (atomic_inc_return(&ppd->led_override_timer_active) == 1) {

  init_timer(&ppd->led_override_timer);
  ppd->led_override_timer.function = qib_run_led_override;
  ppd->led_override_timer.data = (unsigned long) ppd;
  ppd->led_override_timer.expires = jiffies + 1;
  add_timer(&ppd->led_override_timer);
 } else {
  if (ppd->led_override_vals[0] || ppd->led_override_vals[1])
   mod_timer(&ppd->led_override_timer, jiffies + 1);
  atomic_dec(&ppd->led_override_timer_active);
 }
}
