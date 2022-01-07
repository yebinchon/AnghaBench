
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etr_irq_parm {scalar_t__ eai; scalar_t__ pc1; scalar_t__ pc0; } ;


 int ETR_EVENT_PORT0_CHANGE ;
 int ETR_EVENT_PORT1_CHANGE ;
 int ETR_EVENT_PORT_ALERT ;
 int etr_events ;
 int etr_work ;
 int queue_work (int ,int *) ;
 int set_bit (int ,int *) ;
 int time_sync_wq ;

__attribute__((used)) static void etr_timing_alert(struct etr_irq_parm *intparm)
{
 if (intparm->pc0)

  set_bit(ETR_EVENT_PORT0_CHANGE, &etr_events);
 if (intparm->pc1)

  set_bit(ETR_EVENT_PORT1_CHANGE, &etr_events);
 if (intparm->eai)




  set_bit(ETR_EVENT_PORT_ALERT, &etr_events);
 queue_work(time_sync_wq, &etr_work);
}
