
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ETR_EVENT_UPDATE ;
 int etr_events ;
 int etr_work ;
 int queue_work (int ,int *) ;
 int set_bit (int ,int *) ;
 int time_sync_wq ;

__attribute__((used)) static void etr_timeout(unsigned long dummy)
{
 set_bit(ETR_EVENT_UPDATE, &etr_events);
 queue_work(time_sync_wq, &etr_work);
}
