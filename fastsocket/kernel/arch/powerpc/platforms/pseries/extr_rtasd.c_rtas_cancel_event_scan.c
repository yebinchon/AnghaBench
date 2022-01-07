
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cancel_delayed_work_sync (int *) ;
 int event_scan_work ;

void rtas_cancel_event_scan(void)
{
 cancel_delayed_work_sync(&event_scan_work);
}
