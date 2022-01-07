
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_data {int unplug_work; int idle_slice_timer; } ;


 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;

__attribute__((used)) static void cfq_shutdown_timer_wq(struct cfq_data *cfqd)
{
 del_timer_sync(&cfqd->idle_slice_timer);
 cancel_work_sync(&cfqd->unplug_work);
}
