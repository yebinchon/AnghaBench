
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_timer {int set; TYPE_1__* wl; int dly_wrk; } ;
struct TYPE_2__ {int callbacks; } ;


 int atomic_dec (int *) ;
 int cancel_delayed_work (int *) ;

bool brcms_del_timer(struct brcms_timer *t)
{
 if (t->set) {
  t->set = 0;
  if (!cancel_delayed_work(&t->dly_wrk))
   return 0;

  atomic_dec(&t->wl->callbacks);
 }

 return 1;
}
