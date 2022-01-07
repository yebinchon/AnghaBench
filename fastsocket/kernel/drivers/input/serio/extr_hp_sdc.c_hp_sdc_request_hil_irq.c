
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int hp_sdc_irqhook ;
struct TYPE_2__ {int im; int set_im; int task; int hook_lock; int * hil; int * dev; } ;


 int EBUSY ;
 int EINVAL ;
 int HP_SDC_IM_HIL ;
 int HP_SDC_IM_RESET ;
 TYPE_1__ hp_sdc ;
 int tasklet_schedule (int *) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

int hp_sdc_request_hil_irq(hp_sdc_irqhook *callback)
{
 if (callback == ((void*)0) || hp_sdc.dev == ((void*)0))
  return -EINVAL;

 write_lock_irq(&hp_sdc.hook_lock);
 if (hp_sdc.hil != ((void*)0)) {
  write_unlock_irq(&hp_sdc.hook_lock);
  return -EBUSY;
 }

 hp_sdc.hil = callback;
 hp_sdc.im &= ~(HP_SDC_IM_HIL | HP_SDC_IM_RESET);
 hp_sdc.set_im = 1;
 write_unlock_irq(&hp_sdc.hook_lock);

 tasklet_schedule(&hp_sdc.task);

 return 0;
}
