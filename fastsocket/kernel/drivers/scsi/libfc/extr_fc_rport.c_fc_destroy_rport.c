
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (int ) ;
 int rport_event_queue ;

void fc_destroy_rport(void)
{
 destroy_workqueue(rport_event_queue);
}
