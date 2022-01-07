
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ avail; } ;


 int MFGPT_DOMAIN_WORKING ;
 int MFGPT_MAX_TIMERS ;
 int geode_mfgpt_detect () ;
 int mfgpt_get (int) ;
 TYPE_1__* mfgpt_timers ;
 int timers ;

int geode_mfgpt_alloc_timer(int timer, int domain)
{
 int i;

 if (timers == -1) {

  geode_mfgpt_detect();
 }

 if (!timers)
  return -1;

 if (timer >= MFGPT_MAX_TIMERS)
  return -1;

 if (timer < 0) {

  for (i = 0; i < MFGPT_MAX_TIMERS; i++) {
   if (mfgpt_timers[i].avail)
    return mfgpt_get(i);

   if (i == 5 && domain == MFGPT_DOMAIN_WORKING)
    break;
  }
 } else {

  if (mfgpt_timers[timer].avail)
   return mfgpt_get(timer);
 }


 return -1;
}
