
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plug_handle {int unplug_work; int unplug_timer; } ;


 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;

__attribute__((used)) static inline void plugger_flush(struct plug_handle *plug)
{
 del_timer_sync(&plug->unplug_timer);
 cancel_work_sync(&plug->unplug_work);
}
