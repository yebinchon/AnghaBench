
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nes_cm_core {int disconn_wq; int event_wq; int tcp_timer; } ;


 int EINVAL ;
 int NES_DBG_CM ;
 int barrier () ;
 int del_timer (int *) ;
 int destroy_workqueue (int ) ;
 int kfree (struct nes_cm_core*) ;
 int nes_debug (int ,char*,...) ;
 scalar_t__ timer_pending (int *) ;

__attribute__((used)) static int mini_cm_dealloc_core(struct nes_cm_core *cm_core)
{
 nes_debug(NES_DBG_CM, "De-Alloc CM Core (%p)\n", cm_core);

 if (!cm_core)
  return -EINVAL;

 barrier();

 if (timer_pending(&cm_core->tcp_timer))
  del_timer(&cm_core->tcp_timer);

 destroy_workqueue(cm_core->event_wq);
 destroy_workqueue(cm_core->disconn_wq);
 nes_debug(NES_DBG_CM, "\n");
 kfree(cm_core);

 return 0;
}
