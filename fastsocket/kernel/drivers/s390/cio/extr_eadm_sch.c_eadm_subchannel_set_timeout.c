
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct subchannel {int dummy; } ;
struct TYPE_5__ {unsigned long data; scalar_t__ expires; int function; } ;
struct eadm_private {TYPE_1__ timer; } ;


 int add_timer (TYPE_1__*) ;
 int del_timer (TYPE_1__*) ;
 int eadm_subchannel_timeout ;
 struct eadm_private* get_eadm_private (struct subchannel*) ;
 scalar_t__ jiffies ;
 scalar_t__ mod_timer (TYPE_1__*,scalar_t__) ;
 scalar_t__ timer_pending (TYPE_1__*) ;

__attribute__((used)) static void eadm_subchannel_set_timeout(struct subchannel *sch, int expires)
{
 struct eadm_private *private = get_eadm_private(sch);

 if (expires == 0) {
  del_timer(&private->timer);
  return;
 }
 if (timer_pending(&private->timer)) {
  if (mod_timer(&private->timer, jiffies + expires))
   return;
 }
 private->timer.function = eadm_subchannel_timeout;
 private->timer.data = (unsigned long) sch;
 private->timer.expires = jiffies + expires;
 add_timer(&private->timer);
}
