
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int hp_sdc_irqhook ;
struct TYPE_2__ {int set_im; int task; int hook_lock; int im; int * timer; int * dev; } ;


 int EBUSY ;
 int EINVAL ;
 int HP_SDC_IM_FH ;
 int HP_SDC_IM_PT ;
 int HP_SDC_IM_TIMERS ;
 TYPE_1__ hp_sdc ;
 int tasklet_schedule (int *) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

int hp_sdc_request_timer_irq(hp_sdc_irqhook *callback)
{
 if (callback == ((void*)0) || hp_sdc.dev == ((void*)0))
  return -EINVAL;

 write_lock_irq(&hp_sdc.hook_lock);
 if (hp_sdc.timer != ((void*)0)) {
  write_unlock_irq(&hp_sdc.hook_lock);
  return -EBUSY;
 }

 hp_sdc.timer = callback;

 hp_sdc.im &= ~HP_SDC_IM_FH;
        hp_sdc.im &= ~HP_SDC_IM_PT;
 hp_sdc.im &= ~HP_SDC_IM_TIMERS;
 hp_sdc.set_im = 1;
 write_unlock_irq(&hp_sdc.hook_lock);

 tasklet_schedule(&hp_sdc.task);

 return 0;
}
